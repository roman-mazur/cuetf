package data

#aws_appmesh_gateway_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appmesh_gateway_route")
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
					target?: [...close({
						port?: number
						virtual_service?: [...close({
							virtual_service_name?: string
						})]
					})]
				})]
				match?: [...close({
					port?:         number
					service_name?: string
				})]
			})]
			http2_route?: [...close({
				action?: [...close({
					rewrite?: [...close({
						hostname?: [...close({
							default_target_hostname?: string
						})]
						path?: [...close({
							exact?: string
						})]
						prefix?: [...close({
							default_prefix?: string
							value?:          string
						})]
					})]
					target?: [...close({
						port?: number
						virtual_service?: [...close({
							virtual_service_name?: string
						})]
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
					hostname?: [...close({
						exact?:  string
						suffix?: string
					})]
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
				})]
			})]
			http_route?: [...close({
				action?: [...close({
					rewrite?: [...close({
						hostname?: [...close({
							default_target_hostname?: string
						})]
						path?: [...close({
							exact?: string
						})]
						prefix?: [...close({
							default_prefix?: string
							value?:          string
						})]
					})]
					target?: [...close({
						port?: number
						virtual_service?: [...close({
							virtual_service_name?: string
						})]
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
					hostname?: [...close({
						exact?:  string
						suffix?: string
					})]
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
				})]
			})]
			priority?: number
		})]
		tags?: [string]: string
		virtual_gateway_name!: string
	})
}
