accessing - computed
dataSet
	| ds |
	dataset := ds := SnabbGroupedData new.
	ds dotShape color: Color purple.
	"ds lineBuilder shape: RTSVGPathLine new."
	"ds noDot."
	ds data: data.
	ds points: (self reduceToMinAndMax: self context).
	ds x: #tsc.
	ds y: #lag.
	ds
		connectUsing:
			(RTSVGPathLine new
				path: [ :edge | self pathFor: edge ];
				color: Color purple).
	^ ds