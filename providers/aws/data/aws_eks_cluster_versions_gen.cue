package data

aws_eks_cluster_versions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_eks_cluster_versions")
	close({
		cluster_type?: string
		cluster_versions?: [...close({
			cluster_type?:    string
			cluster_version?: string
			control_plane_component_config?: [...close({
				kube_api_server_config?: [...close({
					event_ttl?: [...close({
						constraints?: [...close({
							max?: string
							min?: string
						})]
						default_value?: string
					})]
					service_node_port_range?: [...close({
						constraints?: [...close({
							max_port?: [...close({
								max?: number
								min?: number
							})]
							min_port?: [...close({
								max?: number
								min?: number
							})]
						})]
						default_value?: [...close({
							max_port?: number
							min_port?: number
						})]
					})]
				})]
				kube_controller_manager_config?: [...close({
					horizontal_pod_autoscaler_controller_config?: [...close({
						horizontal_pod_autoscaler_sync_period?: [...close({
							constraints?: [...close({
								max?: string
								min?: string
							})]
							default_value?: string
						})]
					})]
				})]
				kube_scheduler_config?: [...close({
					node_resources_fit?: [...close({
						scoring_strategy?: [...close({
							constraints?: [...close({
								resources?: [...close({
									name?: [...close({
										allowed_values?: [...string]
									})]
									weight?: [...close({
										max?: number
										min?: number
									})]
								})]
								scoring_strategy?: [...close({
									allowed_values?: [...string]
								})]
							})]
							default_value?: [...close({
								resources?: [...close({
									name?:   string
									weight?: number
								})]
								type?: string
							})]
						})]
					})]
				})]
			})]
			control_plane_scaling_tiers?: [...close({
				api_request_concurrency?:  number
				cluster_database_size_gb?: number
				control_plane_component_config_overrides?: [...close({
					kube_api_server_config?: [...close({
						event_ttl?: [...close({
							constraints?: [...close({
								max?: string
								min?: string
							})]
							default_value?: string
						})]
						service_node_port_range?: [...close({
							constraints?: [...close({
								max_port?: [...close({
									max?: number
									min?: number
								})]
								min_port?: [...close({
									max?: number
									min?: number
								})]
							})]
							default_value?: [...close({
								max_port?: number
								min_port?: number
							})]
						})]
					})]
					kube_controller_manager_config?: [...close({
						horizontal_pod_autoscaler_controller_config?: [...close({
							horizontal_pod_autoscaler_sync_period?: [...close({
								constraints?: [...close({
									max?: string
									min?: string
								})]
								default_value?: string
							})]
						})]
					})]
					kube_scheduler_config?: [...close({
						node_resources_fit?: [...close({
							scoring_strategy?: [...close({
								constraints?: [...close({
									resources?: [...close({
										name?: [...close({
											allowed_values?: [...string]
										})]
										weight?: [...close({
											max?: number
											min?: number
										})]
									})]
									scoring_strategy?: [...close({
										allowed_values?: [...string]
									})]
								})]
								default_value?: [...close({
									resources?: [...close({
										name?:   string
										weight?: number
									})]
									type?: string
								})]
							})]
						})]
					})]
				})]
				pod_scheduling_rate_per_second?: number
				tier_name?:                      string
			})]
			default_platform_version?:     string
			default_version?:              bool
			end_of_extended_support_date?: string
			end_of_standard_support_date?: string
			kubernetes_patch_version?:     string
			release_date?:                 string
			version_status?:               string
		})]
		cluster_versions_only?: [...string]
		default_only?: bool
		include_all?:  bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		version_status?: string
	})
}
