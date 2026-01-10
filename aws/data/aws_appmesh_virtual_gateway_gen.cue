package data

#aws_appmesh_virtual_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_appmesh_virtual_gateway")
	close({
		arn?:               string
		created_date?:      string
		id?:                string
		last_updated_date?: string
		mesh_name!:         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		mesh_owner?:     string
		name!:           string
		resource_owner?: string
		spec?: [...close({
			backend_defaults?: [...close({
				client_policy?: [...close({
					tls?: [...close({
						certificate?: [...close({
							file?: [...close({
								certificate_chain?: string
								private_key?:       string
							})]
							sds?: [...close({
								secret_name?: string
							})]
						})]
						enforce?: bool
						ports?: [...number]
						validation?: [...close({
							subject_alternative_names?: [...close({
								match?: [...close({
									exact?: [...string]
								})]
							})]
							trust?: [...close({
								acm?: [...close({
									certificate_authority_arns?: [...string]
								})]
								file?: [...close({
									certificate_chain?: string
								})]
								sds?: [...close({
									secret_name?: string
								})]
							})]
						})]
					})]
				})]
			})]
			listener?: [...close({
				connection_pool?: [...close({
					grpc?: [...close({
						max_requests?: number
					})]
					http?: [...close({
						max_connections?:      number
						max_pending_requests?: number
					})]
					http2?: [...close({
						max_requests?: number
					})]
				})]
				health_check?: [...close({
					healthy_threshold?:   number
					interval_millis?:     number
					path?:                string
					port?:                number
					protocol?:            string
					timeout_millis?:      number
					unhealthy_threshold?: number
				})]
				port_mapping?: [...close({
					port?:     number
					protocol?: string
				})]
				tls?: [...close({
					certificate?: [...close({
						acm?: [...close({
							certificate_arn?: string
						})]
						file?: [...close({
							certificate_chain?: string
							private_key?:       string
						})]
						sds?: [...close({
							secret_name?: string
						})]
					})]
					mode?: string
					validation?: [...close({
						subject_alternative_names?: [...close({
							match?: [...close({
								exact?: [...string]
							})]
						})]
						trust?: [...close({
							file?: [...close({
								certificate_chain?: string
							})]
							sds?: [...close({
								secret_name?: string
							})]
						})]
					})]
				})]
			})]
			logging?: [...close({
				access_log?: [...close({
					file?: [...close({
						format?: [...close({
							json?: [...close({
								key?:   string
								value?: string
							})]
							text?: string
						})]
						path?: string
					})]
				})]
			})]
		})]
		tags?: [string]: string
	})
}
