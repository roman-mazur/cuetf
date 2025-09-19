package data

#aws_appmesh_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appmesh_route")
	close({
		arn?:               string
		created_date?:      string
		id?:                string
		last_updated_date?: string
		mesh_name!:         string
		mesh_owner?:        string
		name!:              string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		resource_owner?: string
		spec?: [...close({
			grpc_route?: [...close({
				action?: [...close({
					weighted_target?: [...close({
						port?:         number
						virtual_node?: string
						weight?:       number
					})]
				})]
				match?: [...close({
					metadata?: [...close({
						invert?: bool
						match?: [...close({
							exact?:  string
							prefix?: string
							range?: [...close({
								end?:   number
								start?: number
							})]
							regex?:  string
							suffix?: string
						})]
						name?: string
					})]
					method_name?:  string
					port?:         number
					prefix?:       string
					service_name?: string
				})]
				retry_policy?: [...close({
					grpc_retry_events?: [...string]
					http_retry_events?: [...string]
					max_retries?: number
					per_retry_timeout?: [...close({
						unit?:  string
						value?: number
					})]
					tcp_retry_events?: [...string]
				})]
				timeout?: [...close({
					idle?: [...close({
						unit?:  string
						value?: number
					})]
					per_request?: [...close({
						unit?:  string
						value?: number
					})]
				})]
			})]
			http2_route?: [...close({
				action?: [...close({
					weighted_target?: [...close({
						port?:         number
						virtual_node?: string
						weight?:       number
					})]
				})]
				match?: [...close({
					header?: [...close({
						invert?: bool
						match?: [...close({
							exact?:  string
							prefix?: string
							range?: [...close({
								end?:   number
								start?: number
							})]
							regex?:  string
							suffix?: string
						})]
						name?: string
					})]
					method?: string
					path?: [...close({
						exact?: string
						regex?: string
					})]
					port?:   number
					prefix?: string
					query_parameter?: [...close({
						match?: [...close({
							exact?: string
						})]
						name?: string
					})]
					scheme?: string
				})]
				retry_policy?: [...close({
					http_retry_events?: [...string]
					max_retries?: number
					per_retry_timeout?: [...close({
						unit?:  string
						value?: number
					})]
					tcp_retry_events?: [...string]
				})]
				timeout?: [...close({
					idle?: [...close({
						unit?:  string
						value?: number
					})]
					per_request?: [...close({
						unit?:  string
						value?: number
					})]
				})]
			})]
			http_route?: [...close({
				action?: [...close({
					weighted_target?: [...close({
						port?:         number
						virtual_node?: string
						weight?:       number
					})]
				})]
				match?: [...close({
					header?: [...close({
						invert?: bool
						match?: [...close({
							exact?:  string
							prefix?: string
							range?: [...close({
								end?:   number
								start?: number
							})]
							regex?:  string
							suffix?: string
						})]
						name?: string
					})]
					method?: string
					path?: [...close({
						exact?: string
						regex?: string
					})]
					port?:   number
					prefix?: string
					query_parameter?: [...close({
						match?: [...close({
							exact?: string
						})]
						name?: string
					})]
					scheme?: string
				})]
				retry_policy?: [...close({
					http_retry_events?: [...string]
					max_retries?: number
					per_retry_timeout?: [...close({
						unit?:  string
						value?: number
					})]
					tcp_retry_events?: [...string]
				})]
				timeout?: [...close({
					idle?: [...close({
						unit?:  string
						value?: number
					})]
					per_request?: [...close({
						unit?:  string
						value?: number
					})]
				})]
			})]
			priority?: number
			tcp_route?: [...close({
				action?: [...close({
					weighted_target?: [...close({
						port?:         number
						virtual_node?: string
						weight?:       number
					})]
				})]
				match?: [...close({
					port?: number
				})]
				timeout?: [...close({
					idle?: [...close({
						unit?:  string
						value?: number
					})]
				})]
			})]
		})]
		tags?: [string]: string
		virtual_router_name!: string
	})
}
