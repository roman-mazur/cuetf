package data

#google_compute_router_status: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_compute_router_status")
	close({
		// Best routes for this router's network.
		best_routes?: [...close({
			as_paths?: [...close({
				as_lists?: [...number]
				path_segment_type?: string
			})]
			creation_timestamp?:         string
			description?:                string
			dest_range?:                 string
			name?:                       string
			network?:                    string
			next_hop_gateway?:           string
			next_hop_hub?:               string
			next_hop_ilb?:               string
			next_hop_instance?:          string
			next_hop_instance_zone?:     string
			next_hop_inter_region_cost?: string
			next_hop_ip?:                string
			next_hop_med?:               string
			next_hop_network?:           string
			next_hop_origin?:            string
			next_hop_peering?:           string
			next_hop_vpn_tunnel?:        string
			params?: [...close({
				resource_manager_tags?: [string]: string
			})]
			priority?:     number
			project?:      string
			route_status?: string
			route_type?:   string
			self_link?:    string
			tags?: [...string]
			warnings?: [...close({
				code?: string
				data?: [...close({
					key?:   string
					value?: string
				})]
				message?: string
			})]
		})]

		// Best routes learned by this router.
		best_routes_for_router?: [...close({
			as_paths?: [...close({
				as_lists?: [...number]
				path_segment_type?: string
			})]
			creation_timestamp?:         string
			description?:                string
			dest_range?:                 string
			name?:                       string
			network?:                    string
			next_hop_gateway?:           string
			next_hop_hub?:               string
			next_hop_ilb?:               string
			next_hop_instance?:          string
			next_hop_instance_zone?:     string
			next_hop_inter_region_cost?: string
			next_hop_ip?:                string
			next_hop_med?:               string
			next_hop_network?:           string
			next_hop_origin?:            string
			next_hop_peering?:           string
			next_hop_vpn_tunnel?:        string
			params?: [...close({
				resource_manager_tags?: [string]: string
			})]
			priority?:     number
			project?:      string
			route_status?: string
			route_type?:   string
			self_link?:    string
			tags?: [...string]
			warnings?: [...close({
				code?: string
				data?: [...close({
					key?:   string
					value?: string
				})]
				message?: string
			})]
		})]

		// Name of the router to query.
		name!: string
		id?:   string

		// URI of the network to which this router belongs.
		network?: string

		// Project ID of the target router.
		project?: string

		// Region of the target router.
		region?: string
	})
}
