pro PMI__Button__Event__DualInletCompartment, ev

	if not DualInletPerfusionAnalysis__input($
		ev.top $
	,	Stdy		= Stdy $
	,	status 		= status $
	,	time 		= time $
	,	pixelcurve 	= p $
	,	aif			= aif $
	,	vif 		= vif $
	,	Roi			= Roi $
	,	ev = ev $
	) then goto, return

	PMI__Message, status, 'Preparing calculation..'

	d = Roi->d()
	n = mult(d[0:2])
	FA 	= fltarr(n)
	FV 	= fltarr(n)
	TT  = fltarr(n)

   i=0L
   ind = Roi -> Where(Stdy->DataPath(),t=Roi->t(i),n=n)
   while n eq 0 do begin
    	i=i+1
    	ind = Roi -> Where(Stdy->DataPath(),t=Roi->t(i),n=n)
   endwhile

	for i=0L,n-1 do begin

		PMI__Message, status, 'Fitting ' + Roi->name() + ' pixels to 1-compartment model', 	i/(n-1.0)

		Pars = [0.2*50/6000.,0.8*50/6000.,20.]
		p[i,*] = FitDualInletCompartment(time,reform(p[i,*]),aif,vif,Pars=Pars,/quiet)

		FA[ind[i]] 	= 6000.0*Pars[0]
		FV[ind[i]] 	= 6000.0*Pars[1]
		TT[ind[i]] 	= Pars[2]
	endfor


	PMI__Message, status, 'Saving Results'

	Domain 	= {z:Roi->z(), t:Roi->t(0), m:Roi->m()}

	S = Stdy->New('SERIES', Domain=Domain, Data=FA,	Name='2-inlet 1-compartment model - Arterial Flow (ml/100ml/min)')
	S = Stdy->New('SERIES', Domain=Domain, Data=FV,	Name='2-inlet 1-compartment model - Venous Flow (ml/100ml/min)')
	S = Stdy->New('SERIES', Domain=Domain, Data=TT,	Name='2-inlet 1-compartment model - Mean Transit Time (sec)')

	PMI__Control, ev.top, /refresh
	return:PMI__Message, status
end

pro PMI__Button__Control__DualInletCompartment, id, v

	PMI__Info, tlb(id), Stdy=Stdy
	if obj_valid(Stdy) then begin
		Series = Stdy->Names(0,ns,DefDim=3)
		Regions = Stdy->Names(1,nr)
		sensitive = (ns gt 0) and (nr gt 1)
	endif else sensitive=0
    widget_control, id, sensitive=sensitive
end

function PMI__Button__DualInletCompartment, parent,value=value, separator=separator

	if n_elements(value) eq 0 then value = 'Fit dual input 1-compartment model (Pixel)'

	id = widget_button(parent $
	,	value 		= value	$
	,	event_pro 	= 'PMI__Button__Event__DualInletCompartment'	$
	,	pro_set_value 	= 'PMI__Button__Control__DualInletCompartment' $
	, 	separator 	= separator	)

	return, id

end
