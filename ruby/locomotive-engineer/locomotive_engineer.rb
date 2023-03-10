class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagons_ids)
    @wagons_ids = wagons_ids
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    a, b, c, *rest = each_wagons_id
    [c, *missing_wagons, *rest, a, b]
  end

  def self.add_missing_stops(routes, **stops)
    { **routes, stops: stops.to_h.values }
  end

  def self.extend_route_information(route, more_route_information)
    {**route, **more_route_information}
  end
end
