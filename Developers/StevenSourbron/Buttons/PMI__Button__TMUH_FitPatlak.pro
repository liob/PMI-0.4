function PMI__Button__Input__TMUH_FitPatlak, ev, Stdy = Stdy, status = status $
   ,    time = time, aif = aif,	curve = curve,	Roi =Roi

    PMI__Info, ev.top, Status=Status, Stdy=Stdy

    Series = Stdy->Names(0,DefDim=3,ind=ind,sel=sel)

	in = PMI__Form(ev.top, Title='Perfusion analysis setup', [$
	ptr_new({Type:'DROPLIST',Tag:'ser', Label:'Dynamic series', Value:Series, Select:sel}), $
	ptr_new({Type:'DROPLIST',Tag:'aif', Label:'Arterial Region', Value:Stdy->names(1), Select:stdy->sel(1)}), $
	ptr_new({Type:'DROPLIST',Tag:'roi', Label:'Tissue Region', Value:Stdy->names(1), Select:stdy->sel(1)})])
	IF in.cancel THEN return, 0

    Series = Stdy->Obj(0,ind[in.ser])
    Art = Stdy->Obj(1,in.aif)
    Roi = Stdy->Obj(1,in.roi)

    Time = Series->c(1)
    Time = Time-Time[0]

    Aif = PMI__RoiCurve(Stdy->DataPath(), Series, Art, status, cnt=cnt)
    if cnt eq 0 then begin
    	ok = dialog_message(/information,'Arterial region is empty')
    	return, 0
    end
    Aif = LMU__Enhancement(Aif,1,relative=0)/0.55

	Curve = PMI__RoiCurve(Stdy->DataPath(), Series, Roi, status, cnt=cnt)
    if cnt eq 0 then begin
    	ok = dialog_message(/information,'Region <' + Roi->Name() + '> is not defined on Series <' + Series->Name() + '>')
    	return, 0
    endif
    Curve = LMU__Enhancement(Curve,1,relative=0)

  	return, 1
end



pro PMI__Button__Event__TMUH_FitPatlak, ev

	PMI__Info, ev.top, Stdy=Stdy

	if not PMI__Button__Input__TMUH_FitPatlak(ev, Stdy=Stdy, status=status $
   	,   time=time, aif=aif, curve=curve, Roi=Roi) $
	then begin
		PMI__Message, Status
		return
    endif

	PMI__Message, status, 'Fitting..'

	P = [0.1, 4.5/6000] ;[VE, UR]
	Fit = FitSingleInlet('Patlak', time, aif, curve, P, /POSITIVITY, LIMITED_ABOVE=[1,0])

	PMI__Control, ev.top, Viewer = 'PMI__Display__PerfusionRoiOutput', Display=Display

	Display -> Set, /Refresh $
	,	Model = 'Patlak model' $
	,	Time=Time, Curve=Curve,	Fit=Fit $
	,	Units = 'Signal Enhancement' $
	,	RoiName = Roi->Name() $
	,	Parameters = $
		[{Name:'Intracellular Uptake Rate'	,Units:'ml/100ml/min'	,Value:6000D*P[1]	,Nr: 0,Rnd:1} $
		,{Name:'Extracellular Volume'		,Units:'ml/100ml'		,Value:100D*P[0]	,Nr: 1,Rnd:1} ]

end

pro PMI__Button__Control__TMUH_FitPatlak, id, v

	PMI__Info, tlb(id), Stdy=Stdy
	if obj_valid(Stdy) then begin
		Series = Stdy->Names(0,ns,DefDim=3)
		Regions = Stdy->Names(1,nr)
		sensitive = (ns gt 0) and (nr gt 1)
	endif else sensitive=0
    widget_control, id, sensitive=sensitive
end

function PMI__Button__TMUH_FitPatlak, parent,value=value, separator=separator

	SingleInletPatlak
	PMI__Display__PerfusionRoiOutput__Define

	if n_elements(value) eq 0 then value = '1C model (ROI)'

	id = widget_button(parent $
	,	value = value $
	,	event_pro = 'PMI__Button__Event__TMUH_FitPatlak' $
	,	pro_set_value = 'PMI__Button__Control__TMUH_FitPatlak' $
	, 	separator = separator	)

	return, id

end
