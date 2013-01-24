#ruby ./Import_remarks_rev.rb NfdcRemarks.csv
require_relative '../config/environment'
  lines = File.open(ARGV.first).readlines
  header = lines.shift.strip
  keys = header.split(',').map 
  data = lines.map.with_index do |line, index|
   p index
    values = line.strip.split(',')
    attributes = Hash[keys.zip values]
     # Module.const_get(args[:model]).create(attributes)
  end
  data.each do |row|
  facility = Faafacility.where(:SiteNumber => row['SiteNumber']).first
  attributes = row.slice("RunwayID","RunwayLength","RunwayWidth","RunwaySurfaceTypeCondition","RunwaySurfaceTreatment",
    "PavementClass","RunwayWeightBearingCapacitySW","RunwayWeightBearingCapacityDW","RunwayWeightBearingCapacityDT",
    "RunwayWeightBearingCapacityDDT","EdgeLightsIntensity","BaseEndID","BaseEndTrueAlignment","BaseEndILSType",
    "BaseEndRightTrafficPattern","BaseEndMarkingsType","BaseEndMarkingsCondition","BaseEndPhysicalLatitude",
    "BaseEndPhysicalLatitudeS","BaseEndPhysicalLongitude","BaseEndPhysicalLongitudeS","BaseEndPhysicalElevation",
    "BaseEndCrossingHeight","BaseEndGlidePathAngle","BaseEndDisplacedLatitude","BaseEndDisplacedLatitudeS",
    "BaseEndDisplacedLongitude","BaseEndDisplacedLongitudeS","BaseEndDisplacedElevation","BaseEndDisplacedLength",
    "BaseEndTDZElevation","BaseEndVASI","BaseEndRVR","BaseEndRVV","BaseEndALS","BaseEndREIL","BaseEndCenterlineLights",
    "BaseEndTouchdownLights","BaseEndObjectDescription","BaseEndObjectMarkLight","BaseEndPart77Category",
    "BaseEndObjectClearSlope","BaseEndObjectHeight","BaseEndObjectDistance","BaseEndObjectOffset","ReciprocalEndID",
    "ReciprocalEndTrueAlignment","ReciprocalEndILSType","ReciprocalEndRightTrafficPattern","ReciprocalEndMarkingsType",
    "ReciprocalEndMarkingsCondition","ReciprocalEndPhysicalLatitude","ReciprocalEndPhysicalLatitudeS",
    "ReciprocalEndPhysicalLongitude","ReciprocalEndPhysicalLongitudeS","ReciprocalEndPhysicalElevation",
    "ReciprocalEndCrossingHeight","ReciprocalEndGlidePathAngle","ReciprocalEndDisplacedLatitude",
    "ReciprocalEndDisplacedLatitudeS","ReciprocalEndDisplacedLongitude","ReciprocalEndDisplacedLongitudeS",
    "ReciprocalEndDisplacedElevation","ReciprocalEndDisplacedLength","ReciprocalEndTDZElevation","ReciprocalEndVASI",
    "ReciprocalEndRVR","ReciprocalEndRVV","ReciprocalEndALS","ReciprocalEndREIL","ReciprocalEndCenterlineLights",
    "ReciprocalEndTouchdownLights","ReciprocalEndObjectDescription","ReciprocalEndObjectMarkLight",
    "ReciprocalEndPart77Category","ReciprocalEndObjectClearSlope","ReciprocalEndObjectHeight",
    "ReciprocalEndObjectDistance","ReciprocalEndObjectOffset","RunwayLengthSource","RunwayLengthSourceDate",
    "BaseEndGradient","BaseEndGradientDirection","BaseEndPositionSource","BaseEndPositionSourceDate",
    "BaseEndElevationSource","BaseEndElevationSourceDate","BaseEndDisplacedThresholdPositionSource",
    "BaseEndDisplacedThresholdPositionSourceDate","BaseEndDisplacedThresholdElevationSource",
    "BaseEndDisplacedThresholdElevationSourceDate","BaseEndTouchdownZoneElevationSource",
    "BaseEndTouchdownZoneElevationSourceDate","BaseEndTakeOffRunAvailableTORA","BaseEndTakeOffDistanceAvailableTODA",
    "BaseEndAcltStopDistanceAvailableASDA","BaseEndLandingDistanceAvailableLDA","ReciprocalEndGradient",
    "ReciprocalEndGradientDirection","ReciprocalEndPositionSource","ReciprocalEndPositionSourceDate",
    "ReciprocalEndElevationSource","ReciprocalEndElevationSourceDate","ReciprocalEndDisplacedThresholdPositionSource",
    "ReciprocalEndDisplacedThresholdPositionSourceDate","ReciprocalEndDisplacedThresholdElevationSource",
    "ReciprocalEndDisplacedThresholdElevationSourceDate","ReciprocalEndTouchdownZoneElevationSource",
    "ReciprocalEndTouchdownZoneElevationSourceDate","ReciprocalEndTakeOffRunAvailableTORA",
    "ReciprocalEndTakeOffDistanceAvailableTODA","ReciprocalEndAcltStopDistanceAvailableASDA",
    "ReciprocalEndLandingDistanceAvailableLDA")
  facility.faarunways.create!(attributes)
    
end
p Faarunway.count


