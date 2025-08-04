package schema

format_version: "1.0"
provider_schemas: "registry.terraform.io/elastic/elasticstack": {
	provider: {
		version: 0
		block: {
			block_types: {
				elasticsearch: {
					nesting_mode: "list"
					block: {
						attributes: {
							api_key: {
								type:             "string"
								description:      "API Key to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							bearer_token: {
								type:             "string"
								description:      "Bearer Token to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							ca_data: {
								type:             "string"
								description:      "PEM-encoded custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							ca_file: {
								type:             "string"
								description:      "Path to a custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							cert_data: {
								type:             "string"
								description:      "PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							cert_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							endpoints: {
								type: ["list", "string"]
								description:      "A list of endpoints where the terraform provider will point to, this must include the http(s) schema and port number."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							es_client_authentication: {
								type:             "string"
								description:      "ES Client Authentication field to be used with the JWT token"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							headers: {
								type: ["map", "string"]
								description:      "A list of headers to be sent with each request to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							insecure: {
								type:             "bool"
								description:      "Disable TLS certificate validation"
								description_kind: "markdown"
								optional:         true
							}
							key_data: {
								type:             "string"
								description:      "PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							key_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
							}
							password: {
								type:             "string"
								description:      "Password to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							username: {
								type:             "string"
								description:      "Username to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
							}
						}
						description:      "Elasticsearch connection configuration block. "
						description_kind: "markdown"
					}
					max_items: 1
				}
				fleet: {
					nesting_mode: "list"
					block: {
						attributes: {
							api_key: {
								type:             "string"
								description:      "API Key to use for authentication to Fleet."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							ca_certs: {
								type: ["list", "string"]
								description:      "A list of paths to CA certificates to validate the certificate presented by the Fleet server."
								description_kind: "markdown"
								optional:         true
							}
							endpoint: {
								type:             "string"
								description:      "The Fleet server where the terraform provider will point to, this must include the http(s) schema and port number."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							insecure: {
								type:             "bool"
								description:      "Disable TLS certificate validation"
								description_kind: "markdown"
								optional:         true
							}
							password: {
								type:             "string"
								description:      "Password to use for API authentication to Fleet."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							username: {
								type:             "string"
								description:      "Username to use for API authentication to Fleet."
								description_kind: "markdown"
								optional:         true
							}
						}
						description:      "Fleet connection configuration block."
						description_kind: "markdown"
					}
					max_items: 1
				}
				kibana: {
					nesting_mode: "list"
					block: {
						attributes: {
							api_key: {
								type:             "string"
								description:      "API Key to use for authentication to Kibana"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							ca_certs: {
								type: ["list", "string"]
								description:      "A list of paths to CA certificates to validate the certificate presented by the Kibana server."
								description_kind: "markdown"
								optional:         true
							}
							endpoints: {
								type: ["list", "string"]
								description:      "A comma-separated list of endpoints where the terraform provider will point to, this must include the http(s) schema and port number."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							insecure: {
								type:             "bool"
								description:      "Disable TLS certificate validation"
								description_kind: "markdown"
								optional:         true
							}
							password: {
								type:             "string"
								description:      "Password to use for API authentication to Kibana."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							username: {
								type:             "string"
								description:      "Username to use for API authentication to Kibana."
								description_kind: "markdown"
								optional:         true
							}
						}
						description:      "Kibana connection configuration block."
						description_kind: "markdown"
					}
					max_items: 1
				}
			}
			description_kind: "plain"
		}
	}
	resource_schemas: {
		elasticstack_apm_agent_configuration: {
			version: 0
			block: {
				attributes: {
					agent_name: {
						type:             "string"
						description:      "The agent name is used by the UI to determine which settings to display."
						description_kind: "plain"
						optional:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource."
						description_kind: "markdown"
						computed:         true
					}
					service_environment: {
						type:             "string"
						description:      "The environment of the service."
						description_kind: "plain"
						optional:         true
					}
					service_name: {
						type:             "string"
						description:      "The name of the service."
						description_kind: "plain"
						required:         true
					}
					settings: {
						type: ["map", "string"]
						description:      "Agent configuration settings."
						description_kind: "plain"
						required:         true
					}
				}
				description:      "Manages APM agent configuration."
				description_kind: "plain"
			}
		}
		elasticstack_elasticsearch_cluster_settings: {
			version: 0
			block: {
				attributes: id: {
					type:             "string"
					description:      "Internal identifier of the resource"
					description_kind: "markdown"
					computed:         true
				}
				block_types: {
					elasticsearch_connection: {
						nesting_mode: "list"
						block: {
							attributes: {
								api_key: {
									type:             "string"
									description:      "API Key to use for authentication to Elasticsearch"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								bearer_token: {
									type:             "string"
									description:      "Bearer Token to use for authentication to Elasticsearch"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								ca_data: {
									type:             "string"
									description:      "PEM-encoded custom Certificate Authority certificate"
									description_kind: "markdown"
									optional:         true
								}
								ca_file: {
									type:             "string"
									description:      "Path to a custom Certificate Authority certificate"
									description_kind: "markdown"
									optional:         true
								}
								cert_data: {
									type:             "string"
									description:      "PEM encoded certificate for client auth"
									description_kind: "markdown"
									optional:         true
								}
								cert_file: {
									type:             "string"
									description:      "Path to a file containing the PEM encoded certificate for client auth"
									description_kind: "markdown"
									optional:         true
								}
								endpoints: {
									type: ["list", "string"]
									description:      "A list of endpoints where the terraform provider will point to, this must include the http(s) schema and port number."
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								es_client_authentication: {
									type:             "string"
									description:      "ES Client Authentication field to be used with the JWT token"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								headers: {
									type: ["map", "string"]
									description:      "A list of headers to be sent with each request to Elasticsearch."
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								insecure: {
									type:             "bool"
									description:      "Disable TLS certificate validation"
									description_kind: "markdown"
									optional:         true
								}
								key_data: {
									type:             "string"
									description:      "PEM encoded private key for client auth"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								key_file: {
									type:             "string"
									description:      "Path to a file containing the PEM encoded private key for client auth"
									description_kind: "markdown"
									optional:         true
								}
								password: {
									type:             "string"
									description:      "Password to use for API authentication to Elasticsearch."
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								username: {
									type:             "string"
									description:      "Username to use for API authentication to Elasticsearch."
									description_kind: "markdown"
									optional:         true
								}
							}
							description:      "Elasticsearch connection configuration block. This property will be removed in a future provider version. Configure the Elasticsearch connection via the provider configuration instead."
							description_kind: "markdown"
							deprecated:       true
						}
						max_items: 1
					}
					persistent: {
						nesting_mode: "list"
						block: {
							block_types: setting: {
								nesting_mode: "set"
								block: {
									attributes: {
										name: {
											type:             "string"
											description:      "The name of the setting to set and track."
											description_kind: "markdown"
											required:         true
										}
										value: {
											type:             "string"
											description:      "The value of the setting to set and track."
											description_kind: "markdown"
											optional:         true
										}
										value_list: {
											type: ["list", "string"]
											description:      "The list of values to be set for the key, where the list is required."
											description_kind: "markdown"
											optional:         true
										}
									}
									description:      "Defines the setting in the cluster."
									description_kind: "markdown"
								}
								min_items: 1
							}
							description:      "Settings will apply across restarts."
							description_kind: "markdown"
						}
						max_items: 1
					}
					transient: {
						nesting_mode: "list"
						block: {
							block_types: setting: {
								nesting_mode: "set"
								block: {
									attributes: {
										name: {
											type:             "string"
											description:      "The name of the setting to set and track."
											description_kind: "markdown"
											required:         true
										}
										value: {
											type:             "string"
											description:      "The value of the setting to set and track."
											description_kind: "markdown"
											optional:         true
										}
										value_list: {
											type: ["list", "string"]
											description:      "The list of values to be set for the key, where the list is required."
											description_kind: "markdown"
											optional:         true
										}
									}
									description:      "Defines the setting in the cluster."
									description_kind: "markdown"
								}
								min_items: 1
							}
							description:      "Settings do not survive a full cluster restart."
							description_kind: "markdown"
						}
						max_items: 1
					}
				}
				description:      "Updates cluster-wide settings. If the Elasticsearch security features are enabled, you must have the manage cluster privilege to use this API. See, https://www.elastic.co/guide/en/elasticsearch/reference/current/cluster-update-settings.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_component_template: {
			version: 0
			block: {
				attributes: {
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					metadata: {
						type:             "string"
						description:      "Optional user metadata about the component template."
						description_kind: "markdown"
						optional:         true
					}
					name: {
						type:             "string"
						description:      "Name of the component template to create."
						description_kind: "markdown"
						required:         true
					}
					version: {
						type:             "number"
						description:      "Version number used to manage component templates externally."
						description_kind: "markdown"
						optional:         true
					}
				}
				block_types: {
					elasticsearch_connection: {
						nesting_mode: "list"
						block: {
							attributes: {
								api_key: {
									type:             "string"
									description:      "API Key to use for authentication to Elasticsearch"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								bearer_token: {
									type:             "string"
									description:      "Bearer Token to use for authentication to Elasticsearch"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								ca_data: {
									type:             "string"
									description:      "PEM-encoded custom Certificate Authority certificate"
									description_kind: "markdown"
									optional:         true
								}
								ca_file: {
									type:             "string"
									description:      "Path to a custom Certificate Authority certificate"
									description_kind: "markdown"
									optional:         true
								}
								cert_data: {
									type:             "string"
									description:      "PEM encoded certificate for client auth"
									description_kind: "markdown"
									optional:         true
								}
								cert_file: {
									type:             "string"
									description:      "Path to a file containing the PEM encoded certificate for client auth"
									description_kind: "markdown"
									optional:         true
								}
								endpoints: {
									type: ["list", "string"]
									description:      "A list of endpoints where the terraform provider will point to, this must include the http(s) schema and port number."
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								es_client_authentication: {
									type:             "string"
									description:      "ES Client Authentication field to be used with the JWT token"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								headers: {
									type: ["map", "string"]
									description:      "A list of headers to be sent with each request to Elasticsearch."
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								insecure: {
									type:             "bool"
									description:      "Disable TLS certificate validation"
									description_kind: "markdown"
									optional:         true
								}
								key_data: {
									type:             "string"
									description:      "PEM encoded private key for client auth"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								key_file: {
									type:             "string"
									description:      "Path to a file containing the PEM encoded private key for client auth"
									description_kind: "markdown"
									optional:         true
								}
								password: {
									type:             "string"
									description:      "Password to use for API authentication to Elasticsearch."
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								username: {
									type:             "string"
									description:      "Username to use for API authentication to Elasticsearch."
									description_kind: "markdown"
									optional:         true
								}
							}
							description:      "Elasticsearch connection configuration block. This property will be removed in a future provider version. Configure the Elasticsearch connection via the provider configuration instead."
							description_kind: "markdown"
							deprecated:       true
						}
						max_items: 1
					}
					template: {
						nesting_mode: "list"
						block: {
							attributes: {
								mappings: {
									type:             "string"
									description:      "Mapping for fields in the index. Should be specified as a JSON object of field mappings. See the documentation (https://www.elastic.co/guide/en/elasticsearch/reference/current/explicit-mapping.html) for more details"
									description_kind: "markdown"
									optional:         true
								}
								settings: {
									type:             "string"
									description:      "Configuration options for the index. See, https://www.elastic.co/guide/en/elasticsearch/reference/current/index-modules.html#index-modules-settings"
									description_kind: "markdown"
									optional:         true
								}
							}
							block_types: alias: {
								nesting_mode: "set"
								block: {
									attributes: {
										filter: {
											type:             "string"
											description:      "Query used to limit documents the alias can access."
											description_kind: "markdown"
											optional:         true
										}
										index_routing: {
											type:             "string"
											description:      "Value used to route indexing operations to a specific shard. If specified, this overwrites the routing value for indexing operations."
											description_kind: "markdown"
											optional:         true
										}
										is_hidden: {
											type:             "bool"
											description:      "If true, the alias is hidden."
											description_kind: "markdown"
											optional:         true
										}
										is_write_index: {
											type:             "bool"
											description:      "If true, the index is the write index for the alias."
											description_kind: "markdown"
											optional:         true
										}
										name: {
											type:             "string"
											description:      "The alias name. Index alias names support date math. See, https://www.elastic.co/guide/en/elasticsearch/reference/current/date-math-index-names.html"
											description_kind: "markdown"
											required:         true
										}
										routing: {
											type:             "string"
											description:      "Value used to route indexing and search operations to a specific shard."
											description_kind: "markdown"
											optional:         true
										}
										search_routing: {
											type:             "string"
											description:      "Value used to route search operations to a specific shard. If specified, this overwrites the routing value for search operations."
											description_kind: "markdown"
											optional:         true
										}
									}
									description:      "Alias to add."
									description_kind: "markdown"
								}
							}
							description:      "Template to be applied. It may optionally include an aliases, mappings, or settings configuration."
							description_kind: "markdown"
						}
						min_items: 1
						max_items: 1
					}
				}
				description:      "Creates or updates a component template. Component templates are building blocks for constructing index templates that specify index mappings, settings, and aliases. See, https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-component-template.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_data_stream: {
			version: 0
			block: {
				attributes: {
					generation: {
						type:             "number"
						description:      "Current generation for the data stream."
						description_kind: "markdown"
						computed:         true
					}
					hidden: {
						type:             "bool"
						description:      "If `true`, the data stream is hidden."
						description_kind: "markdown"
						computed:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					ilm_policy: {
						type:             "string"
						description:      "Name of the current ILM lifecycle policy in the stream’s matching index template."
						description_kind: "markdown"
						computed:         true
					}
					indices: {
						type: ["list", ["object", {
							index_name: "string"
							index_uuid: "string"
						}]]
						description:      "Array of objects containing information about the data stream’s backing indices. The last item in this array contains information about the stream’s current write index."
						description_kind: "markdown"
						computed:         true
					}
					metadata: {
						type:             "string"
						description:      "Custom metadata for the stream, copied from the _meta object of the stream’s matching index template."
						description_kind: "markdown"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "Name of the data stream to create."
						description_kind: "markdown"
						required:         true
					}
					replicated: {
						type:             "bool"
						description:      "If `true`, the data stream is created and managed by cross-cluster replication and the local cluster can not write into this data stream or change its mappings."
						description_kind: "markdown"
						computed:         true
					}
					status: {
						type:             "string"
						description:      "Health status of the data stream."
						description_kind: "markdown"
						computed:         true
					}
					system: {
						type:             "bool"
						description:      "If `true`, the data stream is created and managed by an Elastic stack component and cannot be modified through normal user interaction."
						description_kind: "markdown"
						computed:         true
					}
					template: {
						type:             "string"
						description:      "Name of the index template used to create the data stream’s backing indices."
						description_kind: "markdown"
						computed:         true
					}
					timestamp_field: {
						type:             "string"
						description:      "Contains information about the data stream’s @timestamp field."
						description_kind: "markdown"
						computed:         true
					}
				}
				block_types: elasticsearch_connection: {
					nesting_mode: "list"
					block: {
						attributes: {
							api_key: {
								type:             "string"
								description:      "API Key to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							bearer_token: {
								type:             "string"
								description:      "Bearer Token to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							ca_data: {
								type:             "string"
								description:      "PEM-encoded custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							ca_file: {
								type:             "string"
								description:      "Path to a custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							cert_data: {
								type:             "string"
								description:      "PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							cert_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							endpoints: {
								type: ["list", "string"]
								description:      "A list of endpoints where the terraform provider will point to, this must include the http(s) schema and port number."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							es_client_authentication: {
								type:             "string"
								description:      "ES Client Authentication field to be used with the JWT token"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							headers: {
								type: ["map", "string"]
								description:      "A list of headers to be sent with each request to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							insecure: {
								type:             "bool"
								description:      "Disable TLS certificate validation"
								description_kind: "markdown"
								optional:         true
							}
							key_data: {
								type:             "string"
								description:      "PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							key_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
							}
							password: {
								type:             "string"
								description:      "Password to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							username: {
								type:             "string"
								description:      "Username to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
							}
						}
						description:      "Elasticsearch connection configuration block. This property will be removed in a future provider version. Configure the Elasticsearch connection via the provider configuration instead."
						description_kind: "markdown"
						deprecated:       true
					}
					max_items: 1
				}
				description:      "Managing Elasticsearch data streams, see: https://www.elastic.co/guide/en/elasticsearch/reference/current/data-stream-apis.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_data_stream_lifecycle: {
			version: 0
			block: {
				attributes: {
					data_retention: {
						type:             "string"
						description:      "Every document added to this data stream will be stored at least for this time frame. When empty, every document in this data stream will be stored indefinitely"
						description_kind: "plain"
						optional:         true
					}
					downsampling: {
						nested_type: {
							attributes: {
								after: {
									type:             "string"
									description:      "Interval representing when the backing index is meant to be downsampled"
									description_kind: "plain"
									required:         true
								}
								fixed_interval: {
									type:             "string"
									description:      "The interval at which to aggregate the original time series index."
									description_kind: "plain"
									required:         true
								}
							}
							nesting_mode: "list"
						}
						description:      "Downsampling configuration objects, each defining an after interval representing when the backing index is meant to be downsampled and a fixed_interval representing the downsampling interval."
						description_kind: "plain"
						optional:         true
					}
					enabled: {
						type:             "bool"
						description:      "Data stream lifecycle on/off."
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					expand_wildcards: {
						type:             "string"
						description:      "Determines how wildcard patterns in the `indices` parameter match data streams and indices. Supports comma-separated values, such as `closed,hidden`."
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource."
						description_kind: "plain"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "Name of the data stream. Supports wildcards."
						description_kind: "plain"
						required:         true
					}
				}
				block_types: elasticsearch_connection: {
					nesting_mode: "list"
					block: {
						attributes: {
							api_key: {
								type:             "string"
								description:      "API Key to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							bearer_token: {
								type:             "string"
								description:      "Bearer Token to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							ca_data: {
								type:             "string"
								description:      "PEM-encoded custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							ca_file: {
								type:             "string"
								description:      "Path to a custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							cert_data: {
								type:             "string"
								description:      "PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							cert_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							endpoints: {
								type: ["list", "string"]
								description:      "A list of endpoints where the terraform provider will point to, this must include the http(s) schema and port number."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							es_client_authentication: {
								type:             "string"
								description:      "ES Client Authentication field to be used with the JWT token"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							headers: {
								type: ["map", "string"]
								description:      "A list of headers to be sent with each request to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							insecure: {
								type:             "bool"
								description:      "Disable TLS certificate validation"
								description_kind: "markdown"
								optional:         true
							}
							key_data: {
								type:             "string"
								description:      "PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							key_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
							}
							password: {
								type:             "string"
								description:      "Password to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							username: {
								type:             "string"
								description:      "Username to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
							}
						}
						description:      "Elasticsearch connection configuration block. "
						description_kind: "markdown"
						deprecated:       true
					}
				}
				description:      "Configures the data stream lifecycle for the targeted data streams, see: https://www.elastic.co/guide/en/elasticsearch/reference/current/data-stream-apis.html"
				description_kind: "plain"
			}
		}
		elasticstack_elasticsearch_enrich_policy: {
			version: 0
			block: {
				attributes: {
					enrich_fields: {
						type: ["set", "string"]
						description:      "Fields to add to matching incoming documents. These fields must be present in the source indices."
						description_kind: "markdown"
						required:         true
					}
					execute: {
						type:             "bool"
						description:      "Whether to call the execute API function in order to create the enrich index."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					indices: {
						type: ["set", "string"]
						description:      "Array of one or more source indices used to create the enrich index."
						description_kind: "markdown"
						required:         true
					}
					match_field: {
						type:             "string"
						description:      "Field in source indices used to match incoming documents."
						description_kind: "markdown"
						required:         true
					}
					name: {
						type:             "string"
						description:      "Name of the enrich policy to manage."
						description_kind: "markdown"
						required:         true
					}
					policy_type: {
						type:             "string"
						description:      "The type of enrich policy, can be one of geo_match, match, range."
						description_kind: "markdown"
						required:         true
					}
					query: {
						type:             "string"
						description:      "Query used to filter documents in the enrich index. The policy only uses documents matching this query to enrich incoming documents. Defaults to a match_all query."
						description_kind: "markdown"
						optional:         true
					}
				}
				block_types: elasticsearch_connection: {
					nesting_mode: "list"
					block: {
						attributes: {
							api_key: {
								type:             "string"
								description:      "API Key to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							bearer_token: {
								type:             "string"
								description:      "Bearer Token to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							ca_data: {
								type:             "string"
								description:      "PEM-encoded custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							ca_file: {
								type:             "string"
								description:      "Path to a custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							cert_data: {
								type:             "string"
								description:      "PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							cert_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							endpoints: {
								type: ["list", "string"]
								description:      "A list of endpoints where the terraform provider will point to, this must include the http(s) schema and port number."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							es_client_authentication: {
								type:             "string"
								description:      "ES Client Authentication field to be used with the JWT token"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							headers: {
								type: ["map", "string"]
								description:      "A list of headers to be sent with each request to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							insecure: {
								type:             "bool"
								description:      "Disable TLS certificate validation"
								description_kind: "markdown"
								optional:         true
							}
							key_data: {
								type:             "string"
								description:      "PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							key_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
							}
							password: {
								type:             "string"
								description:      "Password to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							username: {
								type:             "string"
								description:      "Username to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
							}
						}
						description:      "Elasticsearch connection configuration block. This property will be removed in a future provider version. Configure the Elasticsearch connection via the provider configuration instead."
						description_kind: "markdown"
						deprecated:       true
					}
					max_items: 1
				}
				description:      "Managing Elasticsearch enrich policies, see: https://www.elastic.co/guide/en/elasticsearch/reference/current/enrich-apis.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_index: {
			version: 0
			block: {
				attributes: {
					analysis_analyzer: {
						type:             "string"
						description:      "A JSON string describing the analyzers applied to the index."
						description_kind: "plain"
						optional:         true
					}
					analysis_char_filter: {
						type:             "string"
						description:      "A JSON string describing the char_filters applied to the index."
						description_kind: "plain"
						optional:         true
					}
					analysis_filter: {
						type:             "string"
						description:      "A JSON string describing the filters applied to the index."
						description_kind: "plain"
						optional:         true
					}
					analysis_normalizer: {
						type:             "string"
						description:      "A JSON string describing the normalizers applied to the index."
						description_kind: "plain"
						optional:         true
					}
					analysis_tokenizer: {
						type:             "string"
						description:      "A JSON string describing the tokenizers applied to the index."
						description_kind: "plain"
						optional:         true
					}
					analyze_max_token_count: {
						type:             "number"
						description:      "The maximum number of tokens that can be produced using _analyze API."
						description_kind: "plain"
						optional:         true
					}
					auto_expand_replicas: {
						type:             "string"
						description:      "Set the number of replicas to the node count in the cluster. Set to a dash delimited lower and upper bound (e.g. 0-5) or use all for the upper bound (e.g. 0-all)"
						description_kind: "plain"
						optional:         true
					}
					blocks_metadata: {
						type:             "bool"
						description:      "Set to `true` to disable index metadata reads and writes."
						description_kind: "plain"
						optional:         true
					}
					blocks_read: {
						type:             "bool"
						description:      "Set to `true` to disable read operations against the index."
						description_kind: "plain"
						optional:         true
					}
					blocks_read_only: {
						type:             "bool"
						description:      "Set to `true` to make the index and index metadata read only, `false` to allow writes and metadata changes."
						description_kind: "plain"
						optional:         true
					}
					blocks_read_only_allow_delete: {
						type:             "bool"
						description:      "Identical to `index.blocks.read_only` but allows deleting the index to free up resources."
						description_kind: "plain"
						optional:         true
					}
					blocks_write: {
						type:             "bool"
						description:      "Set to `true` to disable data write operations against the index. This setting does not affect metadata."
						description_kind: "plain"
						optional:         true
					}
					codec: {
						type:             "string"
						description:      "The `default` value compresses stored data with LZ4 compression, but this can be set to `best_compression` which uses DEFLATE for a higher compression ratio. This can be set only on creation."
						description_kind: "plain"
						optional:         true
					}
					default_pipeline: {
						type:             "string"
						description:      "The default ingest node pipeline for this index. Index requests will fail if the default pipeline is set and the pipeline does not exist."
						description_kind: "plain"
						optional:         true
					}
					deletion_protection: {
						type:             "bool"
						description:      "Whether to allow Terraform to destroy the index. Unless this field is set to false in Terraform state, a terraform destroy or terraform apply command that deletes the instance will fail."
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					final_pipeline: {
						type:             "string"
						description:      "Final ingest pipeline for the index. Indexing requests will fail if the final pipeline is set and the pipeline does not exist. The final pipeline always runs after the request pipeline (if specified) and the default pipeline (if it exists). The special pipeline name _none indicates no ingest pipeline will run."
						description_kind: "plain"
						optional:         true
					}
					gc_deletes: {
						type:             "string"
						description:      "The length of time that a deleted document's version number remains available for further versioned operations."
						description_kind: "plain"
						optional:         true
					}
					highlight_max_analyzed_offset: {
						type:             "number"
						description:      "The maximum number of characters that will be analyzed for a highlight request."
						description_kind: "plain"
						optional:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "plain"
						computed:         true
					}
					indexing_slowlog_level: {
						type:             "string"
						description:      "Set which logging level to use for the search slow log, can be: `warn`, `info`, `debug`, `trace`"
						description_kind: "plain"
						optional:         true
					}
					indexing_slowlog_source: {
						type:             "string"
						description:      "Set the number of characters of the `_source` to include in the slowlog lines, `false` or `0` will skip logging the source entirely and setting it to `true` will log the entire source regardless of size. The original `_source` is reformatted by default to make sure that it fits on a single log line."
						description_kind: "plain"
						optional:         true
					}
					indexing_slowlog_threshold_index_debug: {
						type:             "string"
						description:      "Set the cutoff for shard level slow search logging of slow searches for indexing queries, in time units, e.g. `2s`"
						description_kind: "plain"
						optional:         true
					}
					indexing_slowlog_threshold_index_info: {
						type:             "string"
						description:      "Set the cutoff for shard level slow search logging of slow searches for indexing queries, in time units, e.g. `5s`"
						description_kind: "plain"
						optional:         true
					}
					indexing_slowlog_threshold_index_trace: {
						type:             "string"
						description:      "Set the cutoff for shard level slow search logging of slow searches for indexing queries, in time units, e.g. `500ms`"
						description_kind: "plain"
						optional:         true
					}
					indexing_slowlog_threshold_index_warn: {
						type:             "string"
						description:      "Set the cutoff for shard level slow search logging of slow searches for indexing queries, in time units, e.g. `10s`"
						description_kind: "plain"
						optional:         true
					}
					load_fixed_bitset_filters_eagerly: {
						type:             "bool"
						description:      "Indicates whether cached filters are pre-loaded for nested queries. This can be set only on creation."
						description_kind: "plain"
						optional:         true
					}
					mapping_coerce: {
						type:             "bool"
						description:      "Set index level coercion setting that is applied to all mapping types."
						description_kind: "plain"
						optional:         true
					}
					mappings: {
						type: "string"
						description: """
									Mapping for fields in the index.
									\t\t\tIf specified, this mapping can include: field names, [field data types](https://www.elastic.co/guide/en/elasticsearch/reference/current/mapping-types.html), [mapping parameters](https://www.elastic.co/guide/en/elasticsearch/reference/current/mapping-params.html).
									\t\t\t**NOTE:**
									\t\t\t- Changing datatypes in the existing _mappings_ will force index to be re-created.
									\t\t\t- Removing field will be ignored by default same as elasticsearch. You need to recreate the index to remove field completely.
									\t\t\t
									"""
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					master_timeout: {
						type:             "string"
						description:      "Period to wait for a connection to the master node. If no response is received before the timeout expires, the request fails and returns an error. Defaults to `30s`. This value is ignored when running against Serverless projects."
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					max_docvalue_fields_search: {
						type:             "number"
						description:      "The maximum number of `docvalue_fields` that are allowed in a query."
						description_kind: "plain"
						optional:         true
					}
					max_inner_result_window: {
						type:             "number"
						description:      "The maximum value of `from + size` for inner hits definition and top hits aggregations to this index."
						description_kind: "plain"
						optional:         true
					}
					max_ngram_diff: {
						type:             "number"
						description:      "The maximum allowed difference between min_gram and max_gram for NGramTokenizer and NGramTokenFilter."
						description_kind: "plain"
						optional:         true
					}
					max_refresh_listeners: {
						type:             "number"
						description:      "Maximum number of refresh listeners available on each shard of the index."
						description_kind: "plain"
						optional:         true
					}
					max_regex_length: {
						type:             "number"
						description:      "The maximum length of regex that can be used in Regexp Query."
						description_kind: "plain"
						optional:         true
					}
					max_rescore_window: {
						type:             "number"
						description:      "The maximum value of `window_size` for `rescore` requests in searches of this index."
						description_kind: "plain"
						optional:         true
					}
					max_result_window: {
						type:             "number"
						description:      "The maximum value of `from + size` for searches to this index."
						description_kind: "plain"
						optional:         true
					}
					max_script_fields: {
						type:             "number"
						description:      "The maximum number of `script_fields` that are allowed in a query."
						description_kind: "plain"
						optional:         true
					}
					max_shingle_diff: {
						type:             "number"
						description:      "The maximum allowed difference between max_shingle_size and min_shingle_size for ShingleTokenFilter."
						description_kind: "plain"
						optional:         true
					}
					max_terms_count: {
						type:             "number"
						description:      "The maximum number of terms that can be used in Terms Query."
						description_kind: "plain"
						optional:         true
					}
					name: {
						type:             "string"
						description:      "Name of the index you wish to create."
						description_kind: "plain"
						required:         true
					}
					number_of_replicas: {
						type:             "number"
						description:      "Number of shard replicas."
						description_kind: "plain"
						optional:         true
					}
					number_of_routing_shards: {
						type:             "number"
						description:      "Value used with number_of_shards to route documents to a primary shard. This can be set only on creation."
						description_kind: "plain"
						optional:         true
					}
					number_of_shards: {
						type:             "number"
						description:      "Number of shards for the index. This can be set only on creation."
						description_kind: "plain"
						optional:         true
					}
					query_default_field: {
						type: ["set", "string"]
						description:      "Wildcard (*) patterns matching one or more fields. Defaults to '*', which matches all fields eligible for term-level queries, excluding metadata fields."
						description_kind: "plain"
						optional:         true
					}
					refresh_interval: {
						type:             "string"
						description:      "How often to perform a refresh operation, which makes recent changes to the index visible to search. Can be set to `-1` to disable refresh."
						description_kind: "plain"
						optional:         true
					}
					routing_allocation_enable: {
						type:             "string"
						description:      "Controls shard allocation for this index. It can be set to: `all` , `primaries` , `new_primaries` , `none`."
						description_kind: "plain"
						optional:         true
					}
					routing_partition_size: {
						type:             "number"
						description:      "The number of shards a custom routing value can go to. This can be set only on creation."
						description_kind: "plain"
						optional:         true
					}
					routing_rebalance_enable: {
						type:             "string"
						description:      "Enables shard rebalancing for this index. It can be set to: `all`, `primaries` , `replicas` , `none`."
						description_kind: "plain"
						optional:         true
					}
					search_idle_after: {
						type:             "string"
						description:      "How long a shard can not receive a search or get request until it’s considered search idle."
						description_kind: "plain"
						optional:         true
					}
					search_slowlog_level: {
						type:             "string"
						description:      "Set which logging level to use for the search slow log, can be: `warn`, `info`, `debug`, `trace`"
						description_kind: "plain"
						optional:         true
					}
					search_slowlog_threshold_fetch_debug: {
						type:             "string"
						description:      "Set the cutoff for shard level slow search logging of slow searches in the fetch phase, in time units, e.g. `2s`"
						description_kind: "plain"
						optional:         true
					}
					search_slowlog_threshold_fetch_info: {
						type:             "string"
						description:      "Set the cutoff for shard level slow search logging of slow searches in the fetch phase, in time units, e.g. `5s`"
						description_kind: "plain"
						optional:         true
					}
					search_slowlog_threshold_fetch_trace: {
						type:             "string"
						description:      "Set the cutoff for shard level slow search logging of slow searches in the fetch phase, in time units, e.g. `500ms`"
						description_kind: "plain"
						optional:         true
					}
					search_slowlog_threshold_fetch_warn: {
						type:             "string"
						description:      "Set the cutoff for shard level slow search logging of slow searches in the fetch phase, in time units, e.g. `10s`"
						description_kind: "plain"
						optional:         true
					}
					search_slowlog_threshold_query_debug: {
						type:             "string"
						description:      "Set the cutoff for shard level slow search logging of slow searches in the query phase, in time units, e.g. `2s`"
						description_kind: "plain"
						optional:         true
					}
					search_slowlog_threshold_query_info: {
						type:             "string"
						description:      "Set the cutoff for shard level slow search logging of slow searches in the query phase, in time units, e.g. `5s`"
						description_kind: "plain"
						optional:         true
					}
					search_slowlog_threshold_query_trace: {
						type:             "string"
						description:      "Set the cutoff for shard level slow search logging of slow searches in the query phase, in time units, e.g. `500ms`"
						description_kind: "plain"
						optional:         true
					}
					search_slowlog_threshold_query_warn: {
						type:             "string"
						description:      "Set the cutoff for shard level slow search logging of slow searches in the query phase, in time units, e.g. `10s`"
						description_kind: "plain"
						optional:         true
					}
					settings_raw: {
						type:             "string"
						description:      "All raw settings fetched from the cluster."
						description_kind: "plain"
						computed:         true
					}
					shard_check_on_startup: {
						type:             "string"
						description:      "Whether or not shards should be checked for corruption before opening. When corruption is detected, it will prevent the shard from being opened. Accepts `false`, `true`, `checksum`."
						description_kind: "plain"
						optional:         true
					}
					sort_field: {
						type: ["set", "string"]
						description:      "The field to sort shards in this index by."
						description_kind: "plain"
						optional:         true
					}
					sort_order: {
						type: ["list", "string"]
						description:      "The direction to sort shards in. Accepts `asc`, `desc`."
						description_kind: "plain"
						optional:         true
					}
					timeout: {
						type:             "string"
						description:      "Period to wait for a response. If no response is received before the timeout expires, the request fails and returns an error. Defaults to `30s`."
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					unassigned_node_left_delayed_timeout: {
						type:             "string"
						description:      "Time to delay the allocation of replica shards which become unassigned because a node has left, in time units, e.g. `10s`"
						description_kind: "plain"
						optional:         true
					}
					wait_for_active_shards: {
						type:             "string"
						description:      "The number of shard copies that must be active before proceeding with the operation. Set to `all` or any positive integer up to the total number of shards in the index (number_of_replicas+1). Default: `1`, the primary shard. This value is ignored when running against Serverless projects."
						description_kind: "plain"
						optional:         true
						computed:         true
					}
				}
				block_types: {
					alias: {
						nesting_mode: "set"
						block: {
							attributes: {
								filter: {
									type:             "string"
									description:      "Query used to limit documents the alias can access."
									description_kind: "plain"
									optional:         true
								}
								index_routing: {
									type:             "string"
									description:      "Value used to route indexing operations to a specific shard. If specified, this overwrites the `routing` value for indexing operations."
									description_kind: "plain"
									optional:         true
									computed:         true
								}
								is_hidden: {
									type:             "bool"
									description:      "If true, the alias is hidden."
									description_kind: "plain"
									optional:         true
									computed:         true
								}
								is_write_index: {
									type:             "bool"
									description:      "If true, the index is the write index for the alias."
									description_kind: "plain"
									optional:         true
									computed:         true
								}
								name: {
									type:             "string"
									description:      "Index alias name."
									description_kind: "plain"
									required:         true
								}
								routing: {
									type:             "string"
									description:      "Value used to route indexing and search operations to a specific shard."
									description_kind: "plain"
									optional:         true
									computed:         true
								}
								search_routing: {
									type:             "string"
									description:      "Value used to route search operations to a specific shard. If specified, this overwrites the routing value for search operations."
									description_kind: "plain"
									optional:         true
									computed:         true
								}
							}
							description:      "Aliases for the index."
							description_kind: "plain"
						}
					}
					elasticsearch_connection: {
						nesting_mode: "list"
						block: {
							attributes: {
								api_key: {
									type:             "string"
									description:      "API Key to use for authentication to Elasticsearch"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								bearer_token: {
									type:             "string"
									description:      "Bearer Token to use for authentication to Elasticsearch"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								ca_data: {
									type:             "string"
									description:      "PEM-encoded custom Certificate Authority certificate"
									description_kind: "markdown"
									optional:         true
								}
								ca_file: {
									type:             "string"
									description:      "Path to a custom Certificate Authority certificate"
									description_kind: "markdown"
									optional:         true
								}
								cert_data: {
									type:             "string"
									description:      "PEM encoded certificate for client auth"
									description_kind: "markdown"
									optional:         true
								}
								cert_file: {
									type:             "string"
									description:      "Path to a file containing the PEM encoded certificate for client auth"
									description_kind: "markdown"
									optional:         true
								}
								endpoints: {
									type: ["list", "string"]
									description:      "A list of endpoints where the terraform provider will point to, this must include the http(s) schema and port number."
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								es_client_authentication: {
									type:             "string"
									description:      "ES Client Authentication field to be used with the JWT token"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								headers: {
									type: ["map", "string"]
									description:      "A list of headers to be sent with each request to Elasticsearch."
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								insecure: {
									type:             "bool"
									description:      "Disable TLS certificate validation"
									description_kind: "markdown"
									optional:         true
								}
								key_data: {
									type:             "string"
									description:      "PEM encoded private key for client auth"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								key_file: {
									type:             "string"
									description:      "Path to a file containing the PEM encoded private key for client auth"
									description_kind: "markdown"
									optional:         true
								}
								password: {
									type:             "string"
									description:      "Password to use for API authentication to Elasticsearch."
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								username: {
									type:             "string"
									description:      "Username to use for API authentication to Elasticsearch."
									description_kind: "markdown"
									optional:         true
								}
							}
							description:      "Elasticsearch connection configuration block. "
							description_kind: "markdown"
							deprecated:       true
						}
					}
					settings: {
						nesting_mode: "list"
						block: {
							block_types: setting: {
								nesting_mode: "set"
								block: {
									attributes: {
										name: {
											type:             "string"
											description:      "The name of the setting to set and track."
											description_kind: "plain"
											required:         true
										}
										value: {
											type:             "string"
											description:      "The value of the setting to set and track."
											description_kind: "plain"
											required:         true
										}
									}
									description:      "Defines the setting for the index."
									description_kind: "plain"
								}
							}
							description: """
										DEPRECATED: Please use dedicated setting field. Configuration options for the index. See, https://www.elastic.co/guide/en/elasticsearch/reference/current/index-modules.html#index-modules-settings.
										**NOTE:** Static index settings (see: https://www.elastic.co/guide/en/elasticsearch/reference/current/index-modules.html#_static_index_settings) can be only set on the index creation and later cannot be removed or updated - _apply_ will return error
										"""
							description_kind: "plain"
							deprecated:       true
						}
					}
				}
				description:      "Creates Elasticsearch indices. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-create-index.html"
				description_kind: "plain"
			}
		}
		elasticstack_elasticsearch_index_lifecycle: {
			version: 0
			block: {
				attributes: {
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					metadata: {
						type:             "string"
						description:      "Optional user metadata about the ilm policy. Must be valid JSON document."
						description_kind: "markdown"
						optional:         true
					}
					modified_date: {
						type:             "string"
						description:      "The DateTime of the last modification."
						description_kind: "markdown"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "Identifier for the policy."
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: {
					cold: {
						nesting_mode: "list"
						block: {
							attributes: min_age: {
								type:             "string"
								description:      "ILM moves indices through the lifecycle according to their age. To control the timing of these transitions, you set a minimum age for each phase."
								description_kind: "markdown"
								optional:         true
								computed:         true
							}
							block_types: {
								allocate: {
									nesting_mode: "list"
									block: {
										attributes: {
											exclude: {
												type:             "string"
												description:      "Assigns an index to nodes that have none of the specified custom attributes. Must be valid JSON document."
												description_kind: "markdown"
												optional:         true
											}
											include: {
												type:             "string"
												description:      "Assigns an index to nodes that have at least one of the specified custom attributes. Must be valid JSON document."
												description_kind: "markdown"
												optional:         true
											}
											number_of_replicas: {
												type:             "number"
												description:      "Number of replicas to assign to the index. Default: `0`"
												description_kind: "markdown"
												optional:         true
											}
											require: {
												type:             "string"
												description:      "Assigns an index to nodes that have all of the specified custom attributes. Must be valid JSON document."
												description_kind: "markdown"
												optional:         true
											}
											total_shards_per_node: {
												type:             "number"
												description:      "The maximum number of shards for the index on a single Elasticsearch node. Defaults to `-1` (unlimited). Supported from Elasticsearch version **7.16**"
												description_kind: "markdown"
												optional:         true
											}
										}
										description:      "Updates the index settings to change which nodes are allowed to host the index shards and change the number of replicas."
										description_kind: "markdown"
									}
									max_items: 1
								}
								downsample: {
									nesting_mode: "list"
									block: {
										attributes: {
											fixed_interval: {
												type:             "string"
												description:      "Downsampling interval"
												description_kind: "markdown"
												required:         true
											}
											wait_timeout: {
												type:             "string"
												description:      "Downsampling interval"
												description_kind: "markdown"
												optional:         true
												computed:         true
											}
										}
										description:      "Roll up documents within a fixed interval to a single summary document. Reduces the index footprint by storing time series data at reduced granularity."
										description_kind: "markdown"
									}
									max_items: 1
								}
								freeze: {
									nesting_mode: "list"
									block: {
										attributes: enabled: {
											type:             "bool"
											description:      "Controls whether ILM freezes the index."
											description_kind: "markdown"
											optional:         true
										}
										description:      "Freeze the index to minimize its memory footprint."
										description_kind: "markdown"
									}
									max_items: 1
								}
								migrate: {
									nesting_mode: "list"
									block: {
										attributes: enabled: {
											type:             "bool"
											description:      "Controls whether ILM automatically migrates the index during this phase."
											description_kind: "markdown"
											optional:         true
										}
										description:      "Moves the index to the data tier that corresponds to the current phase by updating the \"index.routing.allocation.include._tier_preference\" index setting."
										description_kind: "markdown"
									}
									max_items: 1
								}
								readonly: {
									nesting_mode: "list"
									block: {
										attributes: enabled: {
											type:             "bool"
											description:      "Controls whether ILM makes the index read-only."
											description_kind: "markdown"
											optional:         true
										}
										description:      "Makes the index read-only."
										description_kind: "markdown"
									}
									max_items: 1
								}
								searchable_snapshot: {
									nesting_mode: "list"
									block: {
										attributes: {
											force_merge_index: {
												type:             "bool"
												description:      "Force merges the managed index to one segment."
												description_kind: "markdown"
												optional:         true
											}
											snapshot_repository: {
												type:             "string"
												description:      "Repository used to store the snapshot."
												description_kind: "markdown"
												required:         true
											}
										}
										description:      "Takes a snapshot of the managed index in the configured repository and mounts it as a searchable snapshot."
										description_kind: "markdown"
									}
									max_items: 1
								}
								set_priority: {
									nesting_mode: "list"
									block: {
										attributes: priority: {
											type:             "number"
											description:      "The priority for the index. Must be 0 or greater."
											description_kind: "markdown"
											required:         true
										}
										description:      "Sets the priority of the index as soon as the policy enters the hot, warm, or cold phase. Higher priority indices are recovered before indices with lower priorities following a node restart. Default priority is 1."
										description_kind: "markdown"
									}
									max_items: 1
								}
								unfollow: {
									nesting_mode: "list"
									block: {
										attributes: enabled: {
											type:             "bool"
											description:      "Controls whether ILM makes the follower index a regular one."
											description_kind: "markdown"
											optional:         true
										}
										description:      "Convert a follower index to a regular index. Performed automatically before a rollover, shrink, or searchable snapshot action."
										description_kind: "markdown"
									}
									max_items: 1
								}
							}
							description:      "The index is no longer being updated and is queried infrequently. The information still needs to be searchable, but it’s okay if those queries are slower."
							description_kind: "markdown"
						}
						max_items: 1
					}
					delete: {
						nesting_mode: "list"
						block: {
							attributes: min_age: {
								type:             "string"
								description:      "ILM moves indices through the lifecycle according to their age. To control the timing of these transitions, you set a minimum age for each phase."
								description_kind: "markdown"
								optional:         true
								computed:         true
							}
							block_types: {
								delete: {
									nesting_mode: "list"
									block: {
										attributes: delete_searchable_snapshot: {
											type:             "bool"
											description:      "Deletes the searchable snapshot created in a previous phase."
											description_kind: "markdown"
											optional:         true
										}
										description:      "Permanently removes the index."
										description_kind: "markdown"
									}
									max_items: 1
								}
								wait_for_snapshot: {
									nesting_mode: "list"
									block: {
										attributes: policy: {
											type:             "string"
											description:      "Name of the SLM policy that the delete action should wait for."
											description_kind: "markdown"
											required:         true
										}
										description:      "Waits for the specified SLM policy to be executed before removing the index. This ensures that a snapshot of the deleted index is available."
										description_kind: "markdown"
									}
									max_items: 1
								}
							}
							description:      "The index is no longer needed and can safely be removed."
							description_kind: "markdown"
						}
						max_items: 1
					}
					elasticsearch_connection: {
						nesting_mode: "list"
						block: {
							attributes: {
								api_key: {
									type:             "string"
									description:      "API Key to use for authentication to Elasticsearch"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								bearer_token: {
									type:             "string"
									description:      "Bearer Token to use for authentication to Elasticsearch"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								ca_data: {
									type:             "string"
									description:      "PEM-encoded custom Certificate Authority certificate"
									description_kind: "markdown"
									optional:         true
								}
								ca_file: {
									type:             "string"
									description:      "Path to a custom Certificate Authority certificate"
									description_kind: "markdown"
									optional:         true
								}
								cert_data: {
									type:             "string"
									description:      "PEM encoded certificate for client auth"
									description_kind: "markdown"
									optional:         true
								}
								cert_file: {
									type:             "string"
									description:      "Path to a file containing the PEM encoded certificate for client auth"
									description_kind: "markdown"
									optional:         true
								}
								endpoints: {
									type: ["list", "string"]
									description:      "A list of endpoints where the terraform provider will point to, this must include the http(s) schema and port number."
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								es_client_authentication: {
									type:             "string"
									description:      "ES Client Authentication field to be used with the JWT token"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								headers: {
									type: ["map", "string"]
									description:      "A list of headers to be sent with each request to Elasticsearch."
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								insecure: {
									type:             "bool"
									description:      "Disable TLS certificate validation"
									description_kind: "markdown"
									optional:         true
								}
								key_data: {
									type:             "string"
									description:      "PEM encoded private key for client auth"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								key_file: {
									type:             "string"
									description:      "Path to a file containing the PEM encoded private key for client auth"
									description_kind: "markdown"
									optional:         true
								}
								password: {
									type:             "string"
									description:      "Password to use for API authentication to Elasticsearch."
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								username: {
									type:             "string"
									description:      "Username to use for API authentication to Elasticsearch."
									description_kind: "markdown"
									optional:         true
								}
							}
							description:      "Elasticsearch connection configuration block. This property will be removed in a future provider version. Configure the Elasticsearch connection via the provider configuration instead."
							description_kind: "markdown"
							deprecated:       true
						}
						max_items: 1
					}
					frozen: {
						nesting_mode: "list"
						block: {
							attributes: min_age: {
								type:             "string"
								description:      "ILM moves indices through the lifecycle according to their age. To control the timing of these transitions, you set a minimum age for each phase."
								description_kind: "markdown"
								optional:         true
								computed:         true
							}
							block_types: searchable_snapshot: {
								nesting_mode: "list"
								block: {
									attributes: {
										force_merge_index: {
											type:             "bool"
											description:      "Force merges the managed index to one segment."
											description_kind: "markdown"
											optional:         true
										}
										snapshot_repository: {
											type:             "string"
											description:      "Repository used to store the snapshot."
											description_kind: "markdown"
											required:         true
										}
									}
									description:      "Takes a snapshot of the managed index in the configured repository and mounts it as a searchable snapshot."
									description_kind: "markdown"
								}
								max_items: 1
							}
							description:      "The index is no longer being updated and is queried rarely. The information still needs to be searchable, but it’s okay if those queries are extremely slow."
							description_kind: "markdown"
						}
						max_items: 1
					}
					hot: {
						nesting_mode: "list"
						block: {
							attributes: min_age: {
								type:             "string"
								description:      "ILM moves indices through the lifecycle according to their age. To control the timing of these transitions, you set a minimum age for each phase."
								description_kind: "markdown"
								optional:         true
								computed:         true
							}
							block_types: {
								downsample: {
									nesting_mode: "list"
									block: {
										attributes: {
											fixed_interval: {
												type:             "string"
												description:      "Downsampling interval"
												description_kind: "markdown"
												required:         true
											}
											wait_timeout: {
												type:             "string"
												description:      "Downsampling interval"
												description_kind: "markdown"
												optional:         true
												computed:         true
											}
										}
										description:      "Roll up documents within a fixed interval to a single summary document. Reduces the index footprint by storing time series data at reduced granularity."
										description_kind: "markdown"
									}
									max_items: 1
								}
								forcemerge: {
									nesting_mode: "list"
									block: {
										attributes: {
											index_codec: {
												type:             "string"
												description:      "Codec used to compress the document store."
												description_kind: "markdown"
												optional:         true
											}
											max_num_segments: {
												type:             "number"
												description:      "Number of segments to merge to. To fully merge the index, set to 1."
												description_kind: "markdown"
												required:         true
											}
										}
										description:      "Force merges the index into the specified maximum number of segments. This action makes the index read-only."
										description_kind: "markdown"
									}
									max_items: 1
								}
								readonly: {
									nesting_mode: "list"
									block: {
										attributes: enabled: {
											type:             "bool"
											description:      "Controls whether ILM makes the index read-only."
											description_kind: "markdown"
											optional:         true
										}
										description:      "Makes the index read-only."
										description_kind: "markdown"
									}
									max_items: 1
								}
								rollover: {
									nesting_mode: "list"
									block: {
										attributes: {
											max_age: {
												type:             "string"
												description:      "Triggers rollover after the maximum elapsed time from index creation is reached."
												description_kind: "markdown"
												optional:         true
											}
											max_docs: {
												type:             "number"
												description:      "Triggers rollover after the specified maximum number of documents is reached."
												description_kind: "markdown"
												optional:         true
											}
											max_primary_shard_docs: {
												type:             "number"
												description:      "Triggers rollover when the largest primary shard in the index reaches a certain number of documents. Supported from Elasticsearch version **8.2**"
												description_kind: "markdown"
												optional:         true
											}
											max_primary_shard_size: {
												type:             "string"
												description:      "Triggers rollover when the largest primary shard in the index reaches a certain size."
												description_kind: "markdown"
												optional:         true
											}
											max_size: {
												type:             "string"
												description:      "Triggers rollover when the index reaches a certain size."
												description_kind: "markdown"
												optional:         true
											}
											min_age: {
												type:             "string"
												description:      "Prevents rollover until after the minimum elapsed time from index creation is reached. Supported from Elasticsearch version **8.4**"
												description_kind: "markdown"
												optional:         true
											}
											min_docs: {
												type:             "number"
												description:      "Prevents rollover until after the specified minimum number of documents is reached. Supported from Elasticsearch version **8.4**"
												description_kind: "markdown"
												optional:         true
											}
											min_primary_shard_docs: {
												type:             "number"
												description:      "Prevents rollover until the largest primary shard in the index reaches a certain number of documents. Supported from Elasticsearch version **8.4**"
												description_kind: "markdown"
												optional:         true
											}
											min_primary_shard_size: {
												type:             "string"
												description:      "Prevents rollover until the largest primary shard in the index reaches a certain size. Supported from Elasticsearch version **8.4**"
												description_kind: "markdown"
												optional:         true
											}
											min_size: {
												type:             "string"
												description:      "Prevents rollover until the index reaches a certain size."
												description_kind: "markdown"
												optional:         true
											}
										}
										description:      "Rolls over a target to a new index when the existing index meets one or more of the rollover conditions."
										description_kind: "markdown"
									}
									max_items: 1
								}
								searchable_snapshot: {
									nesting_mode: "list"
									block: {
										attributes: {
											force_merge_index: {
												type:             "bool"
												description:      "Force merges the managed index to one segment."
												description_kind: "markdown"
												optional:         true
											}
											snapshot_repository: {
												type:             "string"
												description:      "Repository used to store the snapshot."
												description_kind: "markdown"
												required:         true
											}
										}
										description:      "Takes a snapshot of the managed index in the configured repository and mounts it as a searchable snapshot."
										description_kind: "markdown"
									}
									max_items: 1
								}
								set_priority: {
									nesting_mode: "list"
									block: {
										attributes: priority: {
											type:             "number"
											description:      "The priority for the index. Must be 0 or greater."
											description_kind: "markdown"
											required:         true
										}
										description:      "Sets the priority of the index as soon as the policy enters the hot, warm, or cold phase. Higher priority indices are recovered before indices with lower priorities following a node restart. Default priority is 1."
										description_kind: "markdown"
									}
									max_items: 1
								}
								shrink: {
									nesting_mode: "list"
									block: {
										attributes: {
											allow_write_after_shrink: {
												type:             "bool"
												description:      "If true, the shrunken index is made writable by removing the write block."
												description_kind: "markdown"
												optional:         true
											}
											max_primary_shard_size: {
												type:             "string"
												description:      "The max primary shard size for the target index."
												description_kind: "markdown"
												optional:         true
											}
											number_of_shards: {
												type:             "number"
												description:      "Number of shards to shrink to."
												description_kind: "markdown"
												optional:         true
											}
										}
										description:      "Sets a source index to read-only and shrinks it into a new index with fewer primary shards."
										description_kind: "markdown"
									}
									max_items: 1
								}
								unfollow: {
									nesting_mode: "list"
									block: {
										attributes: enabled: {
											type:             "bool"
											description:      "Controls whether ILM makes the follower index a regular one."
											description_kind: "markdown"
											optional:         true
										}
										description:      "Convert a follower index to a regular index. Performed automatically before a rollover, shrink, or searchable snapshot action."
										description_kind: "markdown"
									}
									max_items: 1
								}
							}
							description:      "The index is actively being updated and queried."
							description_kind: "markdown"
						}
						max_items: 1
					}
					warm: {
						nesting_mode: "list"
						block: {
							attributes: min_age: {
								type:             "string"
								description:      "ILM moves indices through the lifecycle according to their age. To control the timing of these transitions, you set a minimum age for each phase."
								description_kind: "markdown"
								optional:         true
								computed:         true
							}
							block_types: {
								allocate: {
									nesting_mode: "list"
									block: {
										attributes: {
											exclude: {
												type:             "string"
												description:      "Assigns an index to nodes that have none of the specified custom attributes. Must be valid JSON document."
												description_kind: "markdown"
												optional:         true
											}
											include: {
												type:             "string"
												description:      "Assigns an index to nodes that have at least one of the specified custom attributes. Must be valid JSON document."
												description_kind: "markdown"
												optional:         true
											}
											number_of_replicas: {
												type:             "number"
												description:      "Number of replicas to assign to the index. Default: `0`"
												description_kind: "markdown"
												optional:         true
											}
											require: {
												type:             "string"
												description:      "Assigns an index to nodes that have all of the specified custom attributes. Must be valid JSON document."
												description_kind: "markdown"
												optional:         true
											}
											total_shards_per_node: {
												type:             "number"
												description:      "The maximum number of shards for the index on a single Elasticsearch node. Defaults to `-1` (unlimited). Supported from Elasticsearch version **7.16**"
												description_kind: "markdown"
												optional:         true
											}
										}
										description:      "Updates the index settings to change which nodes are allowed to host the index shards and change the number of replicas."
										description_kind: "markdown"
									}
									max_items: 1
								}
								downsample: {
									nesting_mode: "list"
									block: {
										attributes: {
											fixed_interval: {
												type:             "string"
												description:      "Downsampling interval"
												description_kind: "markdown"
												required:         true
											}
											wait_timeout: {
												type:             "string"
												description:      "Downsampling interval"
												description_kind: "markdown"
												optional:         true
												computed:         true
											}
										}
										description:      "Roll up documents within a fixed interval to a single summary document. Reduces the index footprint by storing time series data at reduced granularity."
										description_kind: "markdown"
									}
									max_items: 1
								}
								forcemerge: {
									nesting_mode: "list"
									block: {
										attributes: {
											index_codec: {
												type:             "string"
												description:      "Codec used to compress the document store."
												description_kind: "markdown"
												optional:         true
											}
											max_num_segments: {
												type:             "number"
												description:      "Number of segments to merge to. To fully merge the index, set to 1."
												description_kind: "markdown"
												required:         true
											}
										}
										description:      "Force merges the index into the specified maximum number of segments. This action makes the index read-only."
										description_kind: "markdown"
									}
									max_items: 1
								}
								migrate: {
									nesting_mode: "list"
									block: {
										attributes: enabled: {
											type:             "bool"
											description:      "Controls whether ILM automatically migrates the index during this phase."
											description_kind: "markdown"
											optional:         true
										}
										description:      "Moves the index to the data tier that corresponds to the current phase by updating the \"index.routing.allocation.include._tier_preference\" index setting."
										description_kind: "markdown"
									}
									max_items: 1
								}
								readonly: {
									nesting_mode: "list"
									block: {
										attributes: enabled: {
											type:             "bool"
											description:      "Controls whether ILM makes the index read-only."
											description_kind: "markdown"
											optional:         true
										}
										description:      "Makes the index read-only."
										description_kind: "markdown"
									}
									max_items: 1
								}
								set_priority: {
									nesting_mode: "list"
									block: {
										attributes: priority: {
											type:             "number"
											description:      "The priority for the index. Must be 0 or greater."
											description_kind: "markdown"
											required:         true
										}
										description:      "Sets the priority of the index as soon as the policy enters the hot, warm, or cold phase. Higher priority indices are recovered before indices with lower priorities following a node restart. Default priority is 1."
										description_kind: "markdown"
									}
									max_items: 1
								}
								shrink: {
									nesting_mode: "list"
									block: {
										attributes: {
											allow_write_after_shrink: {
												type:             "bool"
												description:      "If true, the shrunken index is made writable by removing the write block."
												description_kind: "markdown"
												optional:         true
											}
											max_primary_shard_size: {
												type:             "string"
												description:      "The max primary shard size for the target index."
												description_kind: "markdown"
												optional:         true
											}
											number_of_shards: {
												type:             "number"
												description:      "Number of shards to shrink to."
												description_kind: "markdown"
												optional:         true
											}
										}
										description:      "Sets a source index to read-only and shrinks it into a new index with fewer primary shards."
										description_kind: "markdown"
									}
									max_items: 1
								}
								unfollow: {
									nesting_mode: "list"
									block: {
										attributes: enabled: {
											type:             "bool"
											description:      "Controls whether ILM makes the follower index a regular one."
											description_kind: "markdown"
											optional:         true
										}
										description:      "Convert a follower index to a regular index. Performed automatically before a rollover, shrink, or searchable snapshot action."
										description_kind: "markdown"
									}
									max_items: 1
								}
							}
							description:      "The index is no longer being updated but is still being queried."
							description_kind: "markdown"
						}
						max_items: 1
					}
				}
				description:      "Creates or updates lifecycle policy. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-put-lifecycle.html and https://www.elastic.co/guide/en/elasticsearch/reference/current/ilm-index-lifecycle.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_index_template: {
			version: 0
			block: {
				attributes: {
					composed_of: {
						type: ["list", "string"]
						description:      "An ordered list of component template names."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					index_patterns: {
						type: ["set", "string"]
						description:      "Array of wildcard (*) expressions used to match the names of data streams and indices during creation."
						description_kind: "markdown"
						required:         true
					}
					metadata: {
						type:             "string"
						description:      "Optional user metadata about the index template."
						description_kind: "markdown"
						optional:         true
					}
					name: {
						type:             "string"
						description:      "Name of the index template to create."
						description_kind: "markdown"
						required:         true
					}
					priority: {
						type:             "number"
						description:      "Priority to determine index template precedence when a new data stream or index is created."
						description_kind: "markdown"
						optional:         true
					}
					version: {
						type:             "number"
						description:      "Version number used to manage index templates externally."
						description_kind: "markdown"
						optional:         true
					}
				}
				block_types: {
					data_stream: {
						nesting_mode: "list"
						block: {
							attributes: {
								allow_custom_routing: {
									type:             "bool"
									description:      "If `true`, the data stream supports custom routing. Defaults to `false`. Available only in **8.x**"
									description_kind: "markdown"
									optional:         true
								}
								hidden: {
									type:             "bool"
									description:      "If true, the data stream is hidden."
									description_kind: "markdown"
									optional:         true
								}
							}
							description:      "If this object is included, the template is used to create data streams and their backing indices. Supports an empty object."
							description_kind: "markdown"
						}
						max_items: 1
					}
					elasticsearch_connection: {
						nesting_mode: "list"
						block: {
							attributes: {
								api_key: {
									type:             "string"
									description:      "API Key to use for authentication to Elasticsearch"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								bearer_token: {
									type:             "string"
									description:      "Bearer Token to use for authentication to Elasticsearch"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								ca_data: {
									type:             "string"
									description:      "PEM-encoded custom Certificate Authority certificate"
									description_kind: "markdown"
									optional:         true
								}
								ca_file: {
									type:             "string"
									description:      "Path to a custom Certificate Authority certificate"
									description_kind: "markdown"
									optional:         true
								}
								cert_data: {
									type:             "string"
									description:      "PEM encoded certificate for client auth"
									description_kind: "markdown"
									optional:         true
								}
								cert_file: {
									type:             "string"
									description:      "Path to a file containing the PEM encoded certificate for client auth"
									description_kind: "markdown"
									optional:         true
								}
								endpoints: {
									type: ["list", "string"]
									description:      "A list of endpoints where the terraform provider will point to, this must include the http(s) schema and port number."
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								es_client_authentication: {
									type:             "string"
									description:      "ES Client Authentication field to be used with the JWT token"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								headers: {
									type: ["map", "string"]
									description:      "A list of headers to be sent with each request to Elasticsearch."
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								insecure: {
									type:             "bool"
									description:      "Disable TLS certificate validation"
									description_kind: "markdown"
									optional:         true
								}
								key_data: {
									type:             "string"
									description:      "PEM encoded private key for client auth"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								key_file: {
									type:             "string"
									description:      "Path to a file containing the PEM encoded private key for client auth"
									description_kind: "markdown"
									optional:         true
								}
								password: {
									type:             "string"
									description:      "Password to use for API authentication to Elasticsearch."
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								username: {
									type:             "string"
									description:      "Username to use for API authentication to Elasticsearch."
									description_kind: "markdown"
									optional:         true
								}
							}
							description:      "Elasticsearch connection configuration block. This property will be removed in a future provider version. Configure the Elasticsearch connection via the provider configuration instead."
							description_kind: "markdown"
							deprecated:       true
						}
						max_items: 1
					}
					template: {
						nesting_mode: "list"
						block: {
							attributes: {
								mappings: {
									type:             "string"
									description:      "Mapping for fields in the index. Should be specified as a JSON object of field mappings. See the documentation (https://www.elastic.co/guide/en/elasticsearch/reference/current/explicit-mapping.html) for more details"
									description_kind: "markdown"
									optional:         true
								}
								settings: {
									type:             "string"
									description:      "Configuration options for the index. See, https://www.elastic.co/guide/en/elasticsearch/reference/current/index-modules.html#index-modules-settings"
									description_kind: "markdown"
									optional:         true
								}
							}
							block_types: {
								alias: {
									nesting_mode: "set"
									block: {
										attributes: {
											filter: {
												type:             "string"
												description:      "Query used to limit documents the alias can access."
												description_kind: "markdown"
												optional:         true
											}
											index_routing: {
												type:             "string"
												description:      "Value used to route indexing operations to a specific shard. If specified, this overwrites the `routing` value for indexing operations."
												description_kind: "markdown"
												optional:         true
											}
											is_hidden: {
												type:             "bool"
												description:      "If true, the alias is hidden."
												description_kind: "markdown"
												optional:         true
											}
											is_write_index: {
												type:             "bool"
												description:      "If true, the index is the write index for the alias."
												description_kind: "markdown"
												optional:         true
											}
											name: {
												type:             "string"
												description:      "The alias name."
												description_kind: "markdown"
												required:         true
											}
											routing: {
												type:             "string"
												description:      "Value used to route indexing and search operations to a specific shard."
												description_kind: "markdown"
												optional:         true
											}
											search_routing: {
												type:             "string"
												description:      "Value used to route search operations to a specific shard. If specified, this overwrites the routing value for search operations."
												description_kind: "markdown"
												optional:         true
											}
										}
										description:      "Alias to add."
										description_kind: "markdown"
									}
								}
								lifecycle: {
									nesting_mode: "set"
									block: {
										attributes: data_retention: {
											type:             "string"
											description:      "The retention period of the data indexed in this data stream."
											description_kind: "markdown"
											required:         true
										}
										description:      "Lifecycle of data stream. See, https://www.elastic.co/guide/en/elasticsearch/reference/current/data-stream-lifecycle.html"
										description_kind: "markdown"
									}
									max_items: 1
								}
							}
							description:      "Template to be applied. It may optionally include an aliases, mappings, lifecycle, or settings configuration."
							description_kind: "markdown"
						}
						max_items: 1
					}
				}
				description:      "Creates or updates an index template. Index templates define settings, mappings, and aliases that can be applied automatically to new indices. See, https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-put-template.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_pipeline: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the ingest pipeline."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					metadata: {
						type:             "string"
						description:      "Optional user metadata about the index template."
						description_kind: "markdown"
						optional:         true
					}
					name: {
						type:             "string"
						description:      "The name of the ingest pipeline."
						description_kind: "markdown"
						required:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Processors to run immediately after a processor failure. Each processor supports a processor-level `on_failure` value. If a processor without an `on_failure` value fails, Elasticsearch uses this pipeline-level parameter as a fallback. The processors in this parameter run sequentially in the order specified. Elasticsearch will not attempt to run the pipeline’s remaining processors. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/processors.html. Each record must be a valid JSON document"
						description_kind: "markdown"
						optional:         true
					}
					processors: {
						type: ["list", "string"]
						description:      "Processors used to perform transformations on documents before indexing. Processors run sequentially in the order specified. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/processors.html. Each record must be a valid JSON document."
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: elasticsearch_connection: {
					nesting_mode: "list"
					block: {
						attributes: {
							api_key: {
								type:             "string"
								description:      "API Key to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							bearer_token: {
								type:             "string"
								description:      "Bearer Token to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							ca_data: {
								type:             "string"
								description:      "PEM-encoded custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							ca_file: {
								type:             "string"
								description:      "Path to a custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							cert_data: {
								type:             "string"
								description:      "PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							cert_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							endpoints: {
								type: ["list", "string"]
								description:      "A list of endpoints where the terraform provider will point to, this must include the http(s) schema and port number."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							es_client_authentication: {
								type:             "string"
								description:      "ES Client Authentication field to be used with the JWT token"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							headers: {
								type: ["map", "string"]
								description:      "A list of headers to be sent with each request to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							insecure: {
								type:             "bool"
								description:      "Disable TLS certificate validation"
								description_kind: "markdown"
								optional:         true
							}
							key_data: {
								type:             "string"
								description:      "PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							key_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
							}
							password: {
								type:             "string"
								description:      "Password to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							username: {
								type:             "string"
								description:      "Username to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
							}
						}
						description:      "Elasticsearch connection configuration block. This property will be removed in a future provider version. Configure the Elasticsearch connection via the provider configuration instead."
						description_kind: "markdown"
						deprecated:       true
					}
					max_items: 1
				}
				description:      "Manages tasks and resources related to ingest pipelines and processors. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/ingest-apis.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_logstash_pipeline: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the pipeline."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					last_modified: {
						type:             "string"
						description:      "Date the pipeline was last updated."
						description_kind: "markdown"
						computed:         true
					}
					pipeline: {
						type:             "string"
						description:      "Configuration for the pipeline."
						description_kind: "markdown"
						required:         true
					}
					pipeline_batch_delay: {
						type:             "number"
						description:      "Time in milliseconds to wait for each event before sending an undersized batch to pipeline workers."
						description_kind: "markdown"
						optional:         true
					}
					pipeline_batch_size: {
						type:             "number"
						description:      "The maximum number of events an individual worker thread collects before executing filters and outputs."
						description_kind: "markdown"
						optional:         true
					}
					pipeline_ecs_compatibility: {
						type:             "string"
						description:      "Sets the pipeline default value for ecs_compatibility, a setting that is available to plugins that implement an ECS compatibility mode for use with the Elastic Common Schema."
						description_kind: "markdown"
						optional:         true
					}
					pipeline_id: {
						type:             "string"
						description:      "Identifier for the pipeline."
						description_kind: "markdown"
						required:         true
					}
					pipeline_metadata: {
						type:             "string"
						description:      "Optional JSON metadata about the pipeline."
						description_kind: "markdown"
						optional:         true
					}
					pipeline_ordered: {
						type:             "string"
						description:      "Set the pipeline event ordering."
						description_kind: "markdown"
						optional:         true
					}
					pipeline_plugin_classloaders: {
						type:             "bool"
						description:      "(Beta) Load Java plugins in independent classloaders to isolate their dependencies."
						description_kind: "markdown"
						optional:         true
					}
					pipeline_unsafe_shutdown: {
						type:             "bool"
						description:      "Forces Logstash to exit during shutdown even if there are still inflight events in memory."
						description_kind: "markdown"
						optional:         true
					}
					pipeline_workers: {
						type:             "number"
						description:      "The number of parallel workers used to run the filter and output stages of the pipeline."
						description_kind: "markdown"
						optional:         true
					}
					queue_checkpoint_acks: {
						type:             "number"
						description:      "The maximum number of ACKed events before forcing a checkpoint when persistent queues are enabled."
						description_kind: "markdown"
						optional:         true
					}
					queue_checkpoint_retry: {
						type:             "bool"
						description:      "When enabled, Logstash will retry four times per attempted checkpoint write for any checkpoint writes that fail. Any subsequent errors are not retried."
						description_kind: "markdown"
						optional:         true
					}
					queue_checkpoint_writes: {
						type:             "number"
						description:      "The maximum number of written events before forcing a checkpoint when persistent queues are enabled."
						description_kind: "markdown"
						optional:         true
					}
					queue_drain: {
						type:             "bool"
						description:      "When enabled, Logstash waits until the persistent queue is drained before shutting down."
						description_kind: "markdown"
						optional:         true
					}
					queue_max_bytes: {
						type:             "string"
						description:      "Units for the total capacity of the queue when persistent queues are enabled."
						description_kind: "markdown"
						optional:         true
					}
					queue_max_events: {
						type:             "number"
						description:      "The maximum number of unread events in the queue when persistent queues are enabled."
						description_kind: "markdown"
						optional:         true
					}
					queue_page_capacity: {
						type:             "string"
						description:      "The size of the page data files used when persistent queues are enabled. The queue data consists of append-only data files separated into pages."
						description_kind: "markdown"
						optional:         true
					}
					queue_type: {
						type:             "string"
						description:      "The internal queueing model for event buffering. Options are memory for in-memory queueing, or persisted for disk-based acknowledged queueing."
						description_kind: "markdown"
						optional:         true
					}
					username: {
						type:             "string"
						description:      "User who last updated the pipeline."
						description_kind: "markdown"
						optional:         true
					}
				}
				block_types: elasticsearch_connection: {
					nesting_mode: "list"
					block: {
						attributes: {
							api_key: {
								type:             "string"
								description:      "API Key to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							bearer_token: {
								type:             "string"
								description:      "Bearer Token to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							ca_data: {
								type:             "string"
								description:      "PEM-encoded custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							ca_file: {
								type:             "string"
								description:      "Path to a custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							cert_data: {
								type:             "string"
								description:      "PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							cert_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							endpoints: {
								type: ["list", "string"]
								description:      "A list of endpoints where the terraform provider will point to, this must include the http(s) schema and port number."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							es_client_authentication: {
								type:             "string"
								description:      "ES Client Authentication field to be used with the JWT token"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							headers: {
								type: ["map", "string"]
								description:      "A list of headers to be sent with each request to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							insecure: {
								type:             "bool"
								description:      "Disable TLS certificate validation"
								description_kind: "markdown"
								optional:         true
							}
							key_data: {
								type:             "string"
								description:      "PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							key_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
							}
							password: {
								type:             "string"
								description:      "Password to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							username: {
								type:             "string"
								description:      "Username to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
							}
						}
						description:      "Elasticsearch connection configuration block. This property will be removed in a future provider version. Configure the Elasticsearch connection via the provider configuration instead."
						description_kind: "markdown"
						deprecated:       true
					}
					max_items: 1
				}
				description:      "Manage Logstash Pipelines via Centralized Pipeline Management. See, https://www.elastic.co/guide/en/elasticsearch/reference/current/logstash-apis.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_script: {
			version: 0
			block: {
				attributes: {
					context: {
						type:             "string"
						description:      "Context in which the script or search template should run."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					lang: {
						type:             "string"
						description:      "Script language. For search templates, use `mustache`."
						description_kind: "markdown"
						required:         true
					}
					params: {
						type:             "string"
						description:      "Parameters for the script or search template."
						description_kind: "markdown"
						optional:         true
					}
					script_id: {
						type:             "string"
						description:      "Identifier for the stored script. Must be unique within the cluster."
						description_kind: "markdown"
						required:         true
					}
					source: {
						type:             "string"
						description:      "For scripts, a string containing the script. For search templates, an object containing the search template."
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: elasticsearch_connection: {
					nesting_mode: "list"
					block: {
						attributes: {
							api_key: {
								type:             "string"
								description:      "API Key to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							bearer_token: {
								type:             "string"
								description:      "Bearer Token to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							ca_data: {
								type:             "string"
								description:      "PEM-encoded custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							ca_file: {
								type:             "string"
								description:      "Path to a custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							cert_data: {
								type:             "string"
								description:      "PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							cert_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							endpoints: {
								type: ["list", "string"]
								description:      "A list of endpoints where the terraform provider will point to, this must include the http(s) schema and port number."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							es_client_authentication: {
								type:             "string"
								description:      "ES Client Authentication field to be used with the JWT token"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							headers: {
								type: ["map", "string"]
								description:      "A list of headers to be sent with each request to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							insecure: {
								type:             "bool"
								description:      "Disable TLS certificate validation"
								description_kind: "markdown"
								optional:         true
							}
							key_data: {
								type:             "string"
								description:      "PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							key_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
							}
							password: {
								type:             "string"
								description:      "Password to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							username: {
								type:             "string"
								description:      "Username to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
							}
						}
						description:      "Elasticsearch connection configuration block. This property will be removed in a future provider version. Configure the Elasticsearch connection via the provider configuration instead."
						description_kind: "markdown"
						deprecated:       true
					}
					max_items: 1
				}
				description:      "Creates or updates a stored script or search template. See https://www.elastic.co/guide/en/elasticsearch/reference/current/create-stored-script-api.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_security_api_key: {
			version: 1
			block: {
				attributes: {
					api_key: {
						type:             "string"
						description:      "Generated API Key."
						description_kind: "plain"
						computed:         true
						sensitive:        true
					}
					encoded: {
						type:             "string"
						description:      "API key credentials which is the Base64-encoding of the UTF-8 representation of the id and api_key joined by a colon (:)."
						description_kind: "plain"
						computed:         true
						sensitive:        true
					}
					expiration: {
						type:             "string"
						description:      "Expiration time for the API key. By default, API keys never expire."
						description_kind: "plain"
						optional:         true
					}
					expiration_timestamp: {
						type:             "number"
						description:      "Expiration time in milliseconds for the API key. By default, API keys never expire."
						description_kind: "plain"
						computed:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource."
						description_kind: "plain"
						computed:         true
					}
					key_id: {
						type:             "string"
						description:      "Unique id for this API key."
						description_kind: "plain"
						computed:         true
					}
					metadata: {
						type:             "string"
						description:      "Arbitrary metadata that you want to associate with the API key."
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "Specifies the name for this API key."
						description_kind: "plain"
						required:         true
					}
					role_descriptors: {
						type:             "string"
						description:      "Role descriptors for this API key."
						description_kind: "plain"
						optional:         true
						computed:         true
					}
				}
				block_types: elasticsearch_connection: {
					nesting_mode: "list"
					block: {
						attributes: {
							api_key: {
								type:             "string"
								description:      "API Key to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							bearer_token: {
								type:             "string"
								description:      "Bearer Token to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							ca_data: {
								type:             "string"
								description:      "PEM-encoded custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							ca_file: {
								type:             "string"
								description:      "Path to a custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							cert_data: {
								type:             "string"
								description:      "PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							cert_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							endpoints: {
								type: ["list", "string"]
								description:      "A list of endpoints where the terraform provider will point to, this must include the http(s) schema and port number."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							es_client_authentication: {
								type:             "string"
								description:      "ES Client Authentication field to be used with the JWT token"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							headers: {
								type: ["map", "string"]
								description:      "A list of headers to be sent with each request to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							insecure: {
								type:             "bool"
								description:      "Disable TLS certificate validation"
								description_kind: "markdown"
								optional:         true
							}
							key_data: {
								type:             "string"
								description:      "PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							key_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
							}
							password: {
								type:             "string"
								description:      "Password to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							username: {
								type:             "string"
								description:      "Username to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
							}
						}
						description:      "Elasticsearch connection configuration block. "
						description_kind: "markdown"
						deprecated:       true
					}
				}
				description:      "Creates an API key for access without requiring basic authentication. See, https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-create-api-key.html"
				description_kind: "plain"
			}
		}
		elasticstack_elasticsearch_security_role: {
			version: 0
			block: {
				attributes: {
					cluster: {
						type: ["set", "string"]
						description:      "A list of cluster privileges. These privileges define the cluster level actions that users with this role are able to execute."
						description_kind: "markdown"
						optional:         true
					}
					description: {
						type:             "string"
						description:      "The description of the role."
						description_kind: "markdown"
						optional:         true
					}
					global: {
						type:             "string"
						description:      "An object defining global privileges."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					metadata: {
						type:             "string"
						description:      "Optional meta-data."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The name of the role."
						description_kind: "markdown"
						required:         true
					}
					run_as: {
						type: ["set", "string"]
						description:      "A list of users that the owners of this role can impersonate."
						description_kind: "markdown"
						optional:         true
					}
				}
				block_types: {
					applications: {
						nesting_mode: "set"
						block: {
							attributes: {
								application: {
									type:             "string"
									description:      "The name of the application to which this entry applies."
									description_kind: "markdown"
									required:         true
								}
								privileges: {
									type: ["set", "string"]
									description:      "A list of strings, where each element is the name of an application privilege or action."
									description_kind: "markdown"
									required:         true
								}
								resources: {
									type: ["set", "string"]
									description:      "A list resources to which the privileges are applied."
									description_kind: "markdown"
									required:         true
								}
							}
							description:      "A list of application privilege entries."
							description_kind: "markdown"
						}
					}
					elasticsearch_connection: {
						nesting_mode: "list"
						block: {
							attributes: {
								api_key: {
									type:             "string"
									description:      "API Key to use for authentication to Elasticsearch"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								bearer_token: {
									type:             "string"
									description:      "Bearer Token to use for authentication to Elasticsearch"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								ca_data: {
									type:             "string"
									description:      "PEM-encoded custom Certificate Authority certificate"
									description_kind: "markdown"
									optional:         true
								}
								ca_file: {
									type:             "string"
									description:      "Path to a custom Certificate Authority certificate"
									description_kind: "markdown"
									optional:         true
								}
								cert_data: {
									type:             "string"
									description:      "PEM encoded certificate for client auth"
									description_kind: "markdown"
									optional:         true
								}
								cert_file: {
									type:             "string"
									description:      "Path to a file containing the PEM encoded certificate for client auth"
									description_kind: "markdown"
									optional:         true
								}
								endpoints: {
									type: ["list", "string"]
									description:      "A list of endpoints where the terraform provider will point to, this must include the http(s) schema and port number."
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								es_client_authentication: {
									type:             "string"
									description:      "ES Client Authentication field to be used with the JWT token"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								headers: {
									type: ["map", "string"]
									description:      "A list of headers to be sent with each request to Elasticsearch."
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								insecure: {
									type:             "bool"
									description:      "Disable TLS certificate validation"
									description_kind: "markdown"
									optional:         true
								}
								key_data: {
									type:             "string"
									description:      "PEM encoded private key for client auth"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								key_file: {
									type:             "string"
									description:      "Path to a file containing the PEM encoded private key for client auth"
									description_kind: "markdown"
									optional:         true
								}
								password: {
									type:             "string"
									description:      "Password to use for API authentication to Elasticsearch."
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								username: {
									type:             "string"
									description:      "Username to use for API authentication to Elasticsearch."
									description_kind: "markdown"
									optional:         true
								}
							}
							description:      "Elasticsearch connection configuration block. This property will be removed in a future provider version. Configure the Elasticsearch connection via the provider configuration instead."
							description_kind: "markdown"
							deprecated:       true
						}
						max_items: 1
					}
					indices: {
						nesting_mode: "set"
						block: {
							attributes: {
								allow_restricted_indices: {
									type:             "bool"
									description:      "Include matching restricted indices in names parameter. Usage is strongly discouraged as it can grant unrestricted operations on critical data, make the entire system unstable or leak sensitive information."
									description_kind: "markdown"
									optional:         true
								}
								names: {
									type: ["set", "string"]
									description:      "A list of indices (or index name patterns) to which the permissions in this entry apply."
									description_kind: "markdown"
									required:         true
								}
								privileges: {
									type: ["set", "string"]
									description:      "The index level privileges that the owners of the role have on the specified indices."
									description_kind: "markdown"
									required:         true
								}
								query: {
									type:             "string"
									description:      "A search query that defines the documents the owners of the role have read access to."
									description_kind: "markdown"
									optional:         true
								}
							}
							block_types: field_security: {
								nesting_mode: "list"
								block: {
									attributes: {
										except: {
											type: ["set", "string"]
											description:      "List of the fields to which the grants will not be applied."
											description_kind: "markdown"
											optional:         true
										}
										grant: {
											type: ["set", "string"]
											description:      "List of the fields to grant the access to."
											description_kind: "markdown"
											optional:         true
										}
									}
									description:      "The document fields that the owners of the role have read access to."
									description_kind: "markdown"
								}
								max_items: 1
							}
							description:      "A list of indices permissions entries."
							description_kind: "markdown"
						}
					}
					remote_indices: {
						nesting_mode: "set"
						block: {
							attributes: {
								clusters: {
									type: ["set", "string"]
									description:      "A list of cluster aliases to which the permissions in this entry apply."
									description_kind: "markdown"
									required:         true
								}
								names: {
									type: ["set", "string"]
									description:      "A list of indices (or index name patterns) to which the permissions in this entry apply."
									description_kind: "markdown"
									required:         true
								}
								privileges: {
									type: ["set", "string"]
									description:      "The index level privileges that the owners of the role have on the specified indices."
									description_kind: "markdown"
									required:         true
								}
								query: {
									type:             "string"
									description:      "A search query that defines the documents the owners of the role have read access to."
									description_kind: "markdown"
									optional:         true
								}
							}
							block_types: field_security: {
								nesting_mode: "list"
								block: {
									attributes: {
										except: {
											type: ["set", "string"]
											description:      "List of the fields to which the grants will not be applied."
											description_kind: "markdown"
											optional:         true
										}
										grant: {
											type: ["set", "string"]
											description:      "List of the fields to grant the access to."
											description_kind: "markdown"
											optional:         true
										}
									}
									description:      "The document fields that the owners of the role have read access to."
									description_kind: "markdown"
								}
								max_items: 1
							}
							description:      "A list of remote indices permissions entries. Remote indices are effective for remote clusters configured with the API key based model. They have no effect for remote clusters configured with the certificate based model."
							description_kind: "markdown"
						}
					}
				}
				description:      "Adds and updates roles in the native realm. See, https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-put-role.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_security_role_mapping: {
			version: 0
			block: {
				attributes: {
					enabled: {
						type:             "bool"
						description:      "Mappings that have `enabled` set to `false` are ignored when role mapping is performed."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					metadata: {
						type:             "string"
						description:      "Additional metadata that helps define which roles are assigned to each user. Keys beginning with `_` are reserved for system usage."
						description_kind: "markdown"
						optional:         true
					}
					name: {
						type:             "string"
						description:      "The distinct name that identifies the role mapping, used solely as an identifier."
						description_kind: "markdown"
						required:         true
					}
					role_templates: {
						type:             "string"
						description:      "A list of mustache templates that will be evaluated to determine the roles names that should granted to the users that match the role mapping rules."
						description_kind: "markdown"
						optional:         true
					}
					roles: {
						type: ["set", "string"]
						description:      "A list of role names that are granted to the users that match the role mapping rules."
						description_kind: "markdown"
						optional:         true
					}
					rules: {
						type:             "string"
						description:      "The rules that determine which users should be matched by the mapping. A rule is a logical condition that is expressed by using a JSON DSL."
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: elasticsearch_connection: {
					nesting_mode: "list"
					block: {
						attributes: {
							api_key: {
								type:             "string"
								description:      "API Key to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							bearer_token: {
								type:             "string"
								description:      "Bearer Token to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							ca_data: {
								type:             "string"
								description:      "PEM-encoded custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							ca_file: {
								type:             "string"
								description:      "Path to a custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							cert_data: {
								type:             "string"
								description:      "PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							cert_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							endpoints: {
								type: ["list", "string"]
								description:      "A list of endpoints where the terraform provider will point to, this must include the http(s) schema and port number."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							es_client_authentication: {
								type:             "string"
								description:      "ES Client Authentication field to be used with the JWT token"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							headers: {
								type: ["map", "string"]
								description:      "A list of headers to be sent with each request to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							insecure: {
								type:             "bool"
								description:      "Disable TLS certificate validation"
								description_kind: "markdown"
								optional:         true
							}
							key_data: {
								type:             "string"
								description:      "PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							key_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
							}
							password: {
								type:             "string"
								description:      "Password to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							username: {
								type:             "string"
								description:      "Username to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
							}
						}
						description:      "Elasticsearch connection configuration block. This property will be removed in a future provider version. Configure the Elasticsearch connection via the provider configuration instead."
						description_kind: "markdown"
						deprecated:       true
					}
					max_items: 1
				}
				description:      "Manage role mappings. See, https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-put-role-mapping.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_security_system_user: {
			version: 0
			block: {
				attributes: {
					enabled: {
						type:             "bool"
						description:      "Specifies whether the user is enabled. The default value is true."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					password: {
						type:             "string"
						description:      "The user's password. Passwords must be at least 6 characters long."
						description_kind: "markdown"
						optional:         true
						sensitive:        true
					}
					password_hash: {
						type:             "string"
						description:      "A hash of the user's password. This must be produced using the same hashing algorithm as has been configured for password storage (see https://www.elastic.co/guide/en/elasticsearch/reference/current/security-settings.html#hashing-settings)."
						description_kind: "markdown"
						optional:         true
						sensitive:        true
					}
					username: {
						type:             "string"
						description:      "An identifier for the system user (see https://www.elastic.co/guide/en/elasticsearch/reference/current/built-in-users.html)."
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: elasticsearch_connection: {
					nesting_mode: "list"
					block: {
						attributes: {
							api_key: {
								type:             "string"
								description:      "API Key to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							bearer_token: {
								type:             "string"
								description:      "Bearer Token to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							ca_data: {
								type:             "string"
								description:      "PEM-encoded custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							ca_file: {
								type:             "string"
								description:      "Path to a custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							cert_data: {
								type:             "string"
								description:      "PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							cert_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							endpoints: {
								type: ["list", "string"]
								description:      "A list of endpoints where the terraform provider will point to, this must include the http(s) schema and port number."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							es_client_authentication: {
								type:             "string"
								description:      "ES Client Authentication field to be used with the JWT token"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							headers: {
								type: ["map", "string"]
								description:      "A list of headers to be sent with each request to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							insecure: {
								type:             "bool"
								description:      "Disable TLS certificate validation"
								description_kind: "markdown"
								optional:         true
							}
							key_data: {
								type:             "string"
								description:      "PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							key_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
							}
							password: {
								type:             "string"
								description:      "Password to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							username: {
								type:             "string"
								description:      "Username to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
							}
						}
						description:      "Elasticsearch connection configuration block. "
						description_kind: "markdown"
						deprecated:       true
					}
				}
				description:      "Updates system user's password and enablement. See, https://www.elastic.co/guide/en/elasticsearch/reference/current/built-in-users.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_security_user: {
			version: 0
			block: {
				attributes: {
					email: {
						type:             "string"
						description:      "The email of the user."
						description_kind: "markdown"
						optional:         true
					}
					enabled: {
						type:             "bool"
						description:      "Specifies whether the user is enabled. The default value is true."
						description_kind: "markdown"
						optional:         true
					}
					full_name: {
						type:             "string"
						description:      "The full name of the user."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					metadata: {
						type:             "string"
						description:      "Arbitrary metadata that you want to associate with the user."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					password: {
						type:             "string"
						description:      "The user’s password. Passwords must be at least 6 characters long."
						description_kind: "markdown"
						optional:         true
						sensitive:        true
					}
					password_hash: {
						type:             "string"
						description:      "A hash of the user’s password. This must be produced using the same hashing algorithm as has been configured for password storage (see https://www.elastic.co/guide/en/elasticsearch/reference/current/security-settings.html#hashing-settings)."
						description_kind: "markdown"
						optional:         true
						sensitive:        true
					}
					roles: {
						type: ["set", "string"]
						description:      "A set of roles the user has. The roles determine the user’s access permissions. Default is []."
						description_kind: "markdown"
						required:         true
					}
					username: {
						type:             "string"
						description:      "An identifier for the user (see https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-put-user.html#security-api-put-user-path-params)."
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: elasticsearch_connection: {
					nesting_mode: "list"
					block: {
						attributes: {
							api_key: {
								type:             "string"
								description:      "API Key to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							bearer_token: {
								type:             "string"
								description:      "Bearer Token to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							ca_data: {
								type:             "string"
								description:      "PEM-encoded custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							ca_file: {
								type:             "string"
								description:      "Path to a custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							cert_data: {
								type:             "string"
								description:      "PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							cert_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							endpoints: {
								type: ["list", "string"]
								description:      "A list of endpoints where the terraform provider will point to, this must include the http(s) schema and port number."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							es_client_authentication: {
								type:             "string"
								description:      "ES Client Authentication field to be used with the JWT token"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							headers: {
								type: ["map", "string"]
								description:      "A list of headers to be sent with each request to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							insecure: {
								type:             "bool"
								description:      "Disable TLS certificate validation"
								description_kind: "markdown"
								optional:         true
							}
							key_data: {
								type:             "string"
								description:      "PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							key_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
							}
							password: {
								type:             "string"
								description:      "Password to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							username: {
								type:             "string"
								description:      "Username to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
							}
						}
						description:      "Elasticsearch connection configuration block. This property will be removed in a future provider version. Configure the Elasticsearch connection via the provider configuration instead."
						description_kind: "markdown"
						deprecated:       true
					}
					max_items: 1
				}
				description:      "Adds and updates users in the native realm. These users are commonly referred to as native users. See, https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-put-user.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_snapshot_lifecycle: {
			version: 0
			block: {
				attributes: {
					expand_wildcards: {
						type:             "string"
						description:      "Determines how wildcard patterns in the `indices` parameter match data streams and indices. Supports comma-separated values, such as `closed,hidden`."
						description_kind: "markdown"
						optional:         true
					}
					expire_after: {
						type:             "string"
						description:      "Time period after which a snapshot is considered expired and eligible for deletion."
						description_kind: "markdown"
						optional:         true
					}
					feature_states: {
						type: ["set", "string"]
						description:      "Feature states to include in the snapshot."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					ignore_unavailable: {
						type:             "bool"
						description:      "If `false`, the snapshot fails if any data stream or index in indices is missing or closed. If `true`, the snapshot ignores missing or closed data streams and indices."
						description_kind: "markdown"
						optional:         true
					}
					include_global_state: {
						type:             "bool"
						description:      "If `true`, include the cluster state in the snapshot."
						description_kind: "markdown"
						optional:         true
					}
					indices: {
						type: ["list", "string"]
						description:      "Comma-separated list of data streams and indices to include in the snapshot."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					max_count: {
						type:             "number"
						description:      "Maximum number of snapshots to retain, even if the snapshots have not yet expired."
						description_kind: "markdown"
						optional:         true
					}
					metadata: {
						type:             "string"
						description:      "Attaches arbitrary metadata to the snapshot."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					min_count: {
						type:             "number"
						description:      "Minimum number of snapshots to retain, even if the snapshots have expired."
						description_kind: "markdown"
						optional:         true
					}
					name: {
						type:             "string"
						description:      "ID for the snapshot lifecycle policy you want to create or update."
						description_kind: "markdown"
						required:         true
					}
					partial: {
						type:             "bool"
						description:      "If `false`, the entire snapshot will fail if one or more indices included in the snapshot do not have all primary shards available."
						description_kind: "markdown"
						optional:         true
					}
					repository: {
						type:             "string"
						description:      "Repository used to store snapshots created by this policy."
						description_kind: "markdown"
						required:         true
					}
					schedule: {
						type:             "string"
						description:      "Periodic or absolute schedule at which the policy creates snapshots."
						description_kind: "markdown"
						required:         true
					}
					snapshot_name: {
						type:             "string"
						description:      "Name automatically assigned to each snapshot created by the policy."
						description_kind: "markdown"
						optional:         true
					}
				}
				block_types: elasticsearch_connection: {
					nesting_mode: "list"
					block: {
						attributes: {
							api_key: {
								type:             "string"
								description:      "API Key to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							bearer_token: {
								type:             "string"
								description:      "Bearer Token to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							ca_data: {
								type:             "string"
								description:      "PEM-encoded custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							ca_file: {
								type:             "string"
								description:      "Path to a custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							cert_data: {
								type:             "string"
								description:      "PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							cert_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							endpoints: {
								type: ["list", "string"]
								description:      "A list of endpoints where the terraform provider will point to, this must include the http(s) schema and port number."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							es_client_authentication: {
								type:             "string"
								description:      "ES Client Authentication field to be used with the JWT token"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							headers: {
								type: ["map", "string"]
								description:      "A list of headers to be sent with each request to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							insecure: {
								type:             "bool"
								description:      "Disable TLS certificate validation"
								description_kind: "markdown"
								optional:         true
							}
							key_data: {
								type:             "string"
								description:      "PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							key_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
							}
							password: {
								type:             "string"
								description:      "Password to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							username: {
								type:             "string"
								description:      "Username to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
							}
						}
						description:      "Elasticsearch connection configuration block. This property will be removed in a future provider version. Configure the Elasticsearch connection via the provider configuration instead."
						description_kind: "markdown"
						deprecated:       true
					}
					max_items: 1
				}
				description:      "Creates or updates a snapshot lifecycle policy. See, https://www.elastic.co/guide/en/elasticsearch/reference/current/slm-api-put-policy.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_snapshot_repository: {
			version: 0
			block: {
				attributes: {
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "Name of the snapshot repository to register or update."
						description_kind: "markdown"
						required:         true
					}
					verify: {
						type:             "bool"
						description:      "If true, the request verifies the repository is functional on all master and data nodes in the cluster."
						description_kind: "markdown"
						optional:         true
					}
				}
				block_types: {
					azure: {
						nesting_mode: "list"
						block: {
							attributes: {
								base_path: {
									type:             "string"
									description:      "Specifies the path within the container to the repository data."
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
								chunk_size: {
									type:             "string"
									description:      "Maximum size of files in snapshots."
									description_kind: "markdown"
									optional:         true
								}
								client: {
									type:             "string"
									description:      "Azure named client to use."
									description_kind: "markdown"
									optional:         true
								}
								compress: {
									type:             "bool"
									description:      "If true, metadata files, such as index mappings and settings, are compressed in snapshots."
									description_kind: "markdown"
									optional:         true
								}
								container: {
									type:             "string"
									description:      "Container name. You must create the Azure container before creating the repository."
									description_kind: "markdown"
									required:         true
								}
								location_mode: {
									type:             "string"
									description:      "Location mode. `primary_only` or `secondary_only`. See: https://docs.microsoft.com/en-us/azure/storage/common/storage-redundancy"
									description_kind: "markdown"
									optional:         true
								}
								max_restore_bytes_per_sec: {
									type:             "string"
									description:      "Maximum snapshot restore rate per node."
									description_kind: "markdown"
									optional:         true
								}
								max_snapshot_bytes_per_sec: {
									type:             "string"
									description:      "Maximum snapshot creation rate per node."
									description_kind: "markdown"
									optional:         true
								}
								readonly: {
									type:             "bool"
									description:      "If true, the repository is read-only."
									description_kind: "markdown"
									optional:         true
								}
							}
							description:      "Support for using Azure Blob storage as a repository for Snapshot/Restore. See: https://www.elastic.co/guide/en/elasticsearch/plugins/current/repository-azure.html"
							description_kind: "markdown"
						}
						max_items: 1
					}
					elasticsearch_connection: {
						nesting_mode: "list"
						block: {
							attributes: {
								api_key: {
									type:             "string"
									description:      "API Key to use for authentication to Elasticsearch"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								bearer_token: {
									type:             "string"
									description:      "Bearer Token to use for authentication to Elasticsearch"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								ca_data: {
									type:             "string"
									description:      "PEM-encoded custom Certificate Authority certificate"
									description_kind: "markdown"
									optional:         true
								}
								ca_file: {
									type:             "string"
									description:      "Path to a custom Certificate Authority certificate"
									description_kind: "markdown"
									optional:         true
								}
								cert_data: {
									type:             "string"
									description:      "PEM encoded certificate for client auth"
									description_kind: "markdown"
									optional:         true
								}
								cert_file: {
									type:             "string"
									description:      "Path to a file containing the PEM encoded certificate for client auth"
									description_kind: "markdown"
									optional:         true
								}
								endpoints: {
									type: ["list", "string"]
									description:      "A list of endpoints where the terraform provider will point to, this must include the http(s) schema and port number."
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								es_client_authentication: {
									type:             "string"
									description:      "ES Client Authentication field to be used with the JWT token"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								headers: {
									type: ["map", "string"]
									description:      "A list of headers to be sent with each request to Elasticsearch."
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								insecure: {
									type:             "bool"
									description:      "Disable TLS certificate validation"
									description_kind: "markdown"
									optional:         true
								}
								key_data: {
									type:             "string"
									description:      "PEM encoded private key for client auth"
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								key_file: {
									type:             "string"
									description:      "Path to a file containing the PEM encoded private key for client auth"
									description_kind: "markdown"
									optional:         true
								}
								password: {
									type:             "string"
									description:      "Password to use for API authentication to Elasticsearch."
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								username: {
									type:             "string"
									description:      "Username to use for API authentication to Elasticsearch."
									description_kind: "markdown"
									optional:         true
								}
							}
							description:      "Elasticsearch connection configuration block. This property will be removed in a future provider version. Configure the Elasticsearch connection via the provider configuration instead."
							description_kind: "markdown"
							deprecated:       true
						}
						max_items: 1
					}
					fs: {
						nesting_mode: "list"
						block: {
							attributes: {
								chunk_size: {
									type:             "string"
									description:      "Maximum size of files in snapshots."
									description_kind: "markdown"
									optional:         true
								}
								compress: {
									type:             "bool"
									description:      "If true, metadata files, such as index mappings and settings, are compressed in snapshots."
									description_kind: "markdown"
									optional:         true
								}
								location: {
									type:             "string"
									description:      "Location of the shared filesystem used to store and retrieve snapshots."
									description_kind: "markdown"
									required:         true
								}
								max_number_of_snapshots: {
									type:             "number"
									description:      "Maximum number of snapshots the repository can contain."
									description_kind: "markdown"
									optional:         true
								}
								max_restore_bytes_per_sec: {
									type:             "string"
									description:      "Maximum snapshot restore rate per node."
									description_kind: "markdown"
									optional:         true
								}
								max_snapshot_bytes_per_sec: {
									type:             "string"
									description:      "Maximum snapshot creation rate per node."
									description_kind: "markdown"
									optional:         true
								}
								readonly: {
									type:             "bool"
									description:      "If true, the repository is read-only."
									description_kind: "markdown"
									optional:         true
								}
							}
							description:      "Shared filesystem repository. Repositories of this type use a shared filesystem to store snapshots. This filesystem must be accessible to all master and data nodes in the cluster."
							description_kind: "markdown"
						}
						max_items: 1
					}
					gcs: {
						nesting_mode: "list"
						block: {
							attributes: {
								base_path: {
									type:             "string"
									description:      "Specifies the path within the bucket to the repository data. Defaults to the root of the bucket."
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
								bucket: {
									type:             "string"
									description:      "The name of the bucket to be used for snapshots."
									description_kind: "markdown"
									required:         true
								}
								chunk_size: {
									type:             "string"
									description:      "Maximum size of files in snapshots."
									description_kind: "markdown"
									optional:         true
								}
								client: {
									type:             "string"
									description:      "The name of the client to use to connect to Google Cloud Storage."
									description_kind: "markdown"
									optional:         true
								}
								compress: {
									type:             "bool"
									description:      "If true, metadata files, such as index mappings and settings, are compressed in snapshots."
									description_kind: "markdown"
									optional:         true
								}
								max_restore_bytes_per_sec: {
									type:             "string"
									description:      "Maximum snapshot restore rate per node."
									description_kind: "markdown"
									optional:         true
								}
								max_snapshot_bytes_per_sec: {
									type:             "string"
									description:      "Maximum snapshot creation rate per node."
									description_kind: "markdown"
									optional:         true
								}
								readonly: {
									type:             "bool"
									description:      "If true, the repository is read-only."
									description_kind: "markdown"
									optional:         true
								}
							}
							description:      "Support for using the Google Cloud Storage service as a repository for Snapshot/Restore. See: https://www.elastic.co/guide/en/elasticsearch/plugins/current/repository-gcs.html"
							description_kind: "markdown"
						}
						max_items: 1
					}
					hdfs: {
						nesting_mode: "list"
						block: {
							attributes: {
								chunk_size: {
									type:             "string"
									description:      "Maximum size of files in snapshots."
									description_kind: "markdown"
									optional:         true
								}
								compress: {
									type:             "bool"
									description:      "If true, metadata files, such as index mappings and settings, are compressed in snapshots."
									description_kind: "markdown"
									optional:         true
								}
								load_defaults: {
									type:             "bool"
									description:      "Whether to load the default Hadoop configuration or not."
									description_kind: "markdown"
									optional:         true
								}
								max_restore_bytes_per_sec: {
									type:             "string"
									description:      "Maximum snapshot restore rate per node."
									description_kind: "markdown"
									optional:         true
								}
								max_snapshot_bytes_per_sec: {
									type:             "string"
									description:      "Maximum snapshot creation rate per node."
									description_kind: "markdown"
									optional:         true
								}
								path: {
									type:             "string"
									description:      "The file path within the filesystem where data is stored/loaded."
									description_kind: "markdown"
									required:         true
								}
								readonly: {
									type:             "bool"
									description:      "If true, the repository is read-only."
									description_kind: "markdown"
									optional:         true
								}
								uri: {
									type:             "string"
									description:      "The uri address for hdfs. ex: \"hdfs://<host>:<port>/\"."
									description_kind: "markdown"
									required:         true
								}
							}
							description:      "Support for using HDFS File System as a repository for Snapshot/Restore. See: https://www.elastic.co/guide/en/elasticsearch/plugins/current/repository-hdfs.html"
							description_kind: "markdown"
						}
						max_items: 1
					}
					s3: {
						nesting_mode: "list"
						block: {
							attributes: {
								base_path: {
									type:             "string"
									description:      "Specifies the path to the repository data within its bucket."
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
								bucket: {
									type:             "string"
									description:      "Name of the S3 bucket to use for snapshots."
									description_kind: "markdown"
									required:         true
								}
								buffer_size: {
									type:             "string"
									description:      "Minimum threshold below which the chunk is uploaded using a single request."
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
								canned_acl: {
									type:             "string"
									description:      "The S3 repository supports all S3 canned ACLs."
									description_kind: "markdown"
									optional:         true
								}
								chunk_size: {
									type:             "string"
									description:      "Maximum size of files in snapshots."
									description_kind: "markdown"
									optional:         true
								}
								client: {
									type:             "string"
									description:      "The name of the S3 client to use to connect to S3."
									description_kind: "markdown"
									optional:         true
								}
								compress: {
									type:             "bool"
									description:      "If true, metadata files, such as index mappings and settings, are compressed in snapshots."
									description_kind: "markdown"
									optional:         true
								}
								endpoint: {
									type:             "string"
									description:      "Custom S3 service endpoint, useful when using VPC endpoints or non-default S3 URLs."
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
								max_restore_bytes_per_sec: {
									type:             "string"
									description:      "Maximum snapshot restore rate per node."
									description_kind: "markdown"
									optional:         true
								}
								max_snapshot_bytes_per_sec: {
									type:             "string"
									description:      "Maximum snapshot creation rate per node."
									description_kind: "markdown"
									optional:         true
								}
								path_style_access: {
									type:             "bool"
									description:      "If true, path style access pattern will be used."
									description_kind: "markdown"
									optional:         true
								}
								readonly: {
									type:             "bool"
									description:      "If true, the repository is read-only."
									description_kind: "markdown"
									optional:         true
								}
								server_side_encryption: {
									type:             "bool"
									description:      "When true, files are encrypted server-side using AES-256 algorithm."
									description_kind: "markdown"
									optional:         true
								}
								storage_class: {
									type:             "string"
									description:      "Sets the S3 storage class for objects stored in the snapshot repository."
									description_kind: "markdown"
									optional:         true
								}
							}
							description:      "Support for using AWS S3 as a repository for Snapshot/Restore. See: https://www.elastic.co/guide/en/elasticsearch/plugins/current/repository-s3-repository.html"
							description_kind: "markdown"
						}
						max_items: 1
					}
					url: {
						nesting_mode: "list"
						block: {
							attributes: {
								chunk_size: {
									type:             "string"
									description:      "Maximum size of files in snapshots."
									description_kind: "markdown"
									optional:         true
								}
								compress: {
									type:             "bool"
									description:      "If true, metadata files, such as index mappings and settings, are compressed in snapshots."
									description_kind: "markdown"
									optional:         true
								}
								http_max_retries: {
									type:             "number"
									description:      "Maximum number of retries for http and https URLs."
									description_kind: "markdown"
									optional:         true
								}
								http_socket_timeout: {
									type:             "string"
									description:      "Maximum wait time for data transfers over a connection."
									description_kind: "markdown"
									optional:         true
								}
								max_number_of_snapshots: {
									type:             "number"
									description:      "Maximum number of snapshots the repository can contain."
									description_kind: "markdown"
									optional:         true
								}
								max_restore_bytes_per_sec: {
									type:             "string"
									description:      "Maximum snapshot restore rate per node."
									description_kind: "markdown"
									optional:         true
								}
								max_snapshot_bytes_per_sec: {
									type:             "string"
									description:      "Maximum snapshot creation rate per node."
									description_kind: "markdown"
									optional:         true
								}
								readonly: {
									type:             "bool"
									description:      "If true, the repository is read-only."
									description_kind: "markdown"
									optional:         true
								}
								url: {
									type:             "string"
									description:      "URL location of the root of the shared filesystem repository."
									description_kind: "markdown"
									required:         true
								}
							}
							description:      "URL repository. Repositories of this type are read-only for the cluster. This means the cluster can retrieve or restore snapshots from the repository but cannot write or create snapshots in it."
							description_kind: "markdown"
						}
						max_items: 1
					}
				}
				description:      "Registers or updates a snapshot repository. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/put-snapshot-repo-api.html and https://www.elastic.co/guide/en/elasticsearch/reference/current/snapshots-register-repository.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_transform: {
			version: 0
			block: {
				attributes: {
					align_checkpoints: {
						type:             "bool"
						description:      "Specifies whether the transform checkpoint ranges should be optimized for performance."
						description_kind: "markdown"
						optional:         true
					}
					dates_as_epoch_millis: {
						type:             "bool"
						description:      "Defines if dates in the output should be written as ISO formatted string (default) or as millis since epoch."
						description_kind: "markdown"
						optional:         true
					}
					deduce_mappings: {
						type:             "bool"
						description:      "Specifies whether the transform should deduce the destination index mappings from the transform config."
						description_kind: "markdown"
						optional:         true
					}
					defer_validation: {
						type:             "bool"
						description:      "When true, deferrable validations are not run upon creation, but rather when the transform is started. This behavior may be desired if the source index does not exist until after the transform is created. Default is `false`"
						description_kind: "markdown"
						optional:         true
					}
					description: {
						type:             "string"
						description:      "Free text description of the transform."
						description_kind: "markdown"
						optional:         true
					}
					docs_per_second: {
						type:             "number"
						description:      "Specifies a limit on the number of input documents per second. Default (unset) value disables throttling."
						description_kind: "markdown"
						optional:         true
					}
					enabled: {
						type:             "bool"
						description:      "Controls whether the transform should be started or stopped. Default is `false` (stopped)."
						description_kind: "markdown"
						optional:         true
					}
					frequency: {
						type:             "string"
						description:      "The interval between checks for changes in the source indices when the transform is running continuously. Defaults to `1m`."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					latest: {
						type:             "string"
						description:      "The latest method transforms the data by finding the latest document for each unique key. JSON definition expected. Either 'pivot' or 'latest' must be present."
						description_kind: "markdown"
						optional:         true
					}
					max_page_search_size: {
						type:             "number"
						description:      "Defines the initial page size to use for the composite aggregation for each checkpoint. Default is 500."
						description_kind: "markdown"
						optional:         true
					}
					metadata: {
						type:             "string"
						description:      "Defines optional transform metadata."
						description_kind: "markdown"
						optional:         true
					}
					name: {
						type:             "string"
						description:      "Name of the transform you wish to create."
						description_kind: "markdown"
						required:         true
					}
					num_failure_retries: {
						type:             "number"
						description:      "Defines the number of retries on a recoverable failure before the transform task is marked as failed. The default value is the cluster-level setting num_transform_failure_retries."
						description_kind: "markdown"
						optional:         true
					}
					pivot: {
						type:             "string"
						description:      "The pivot method transforms the data by aggregating and grouping it. JSON definition expected. Either 'pivot' or 'latest' must be present."
						description_kind: "markdown"
						optional:         true
					}
					timeout: {
						type:             "string"
						description:      "Period to wait for a response from Elasticsearch when performing any management operation. If no response is received before the timeout expires, the operation fails and returns an error. Defaults to `30s`."
						description_kind: "markdown"
						optional:         true
					}
					unattended: {
						type:             "bool"
						description:      "In unattended mode, the transform retries indefinitely in case of an error which means the transform never fails."
						description_kind: "markdown"
						optional:         true
					}
				}
				block_types: {
					destination: {
						nesting_mode: "list"
						block: {
							attributes: {
								index: {
									type:             "string"
									description:      "The destination index for the transform."
									description_kind: "markdown"
									required:         true
								}
								pipeline: {
									type:             "string"
									description:      "The unique identifier for an ingest pipeline."
									description_kind: "markdown"
									optional:         true
								}
							}
							block_types: aliases: {
								nesting_mode: "list"
								block: {
									attributes: {
										alias: {
											type:             "string"
											description:      "The name of the alias."
											description_kind: "markdown"
											required:         true
										}
										move_on_creation: {
											type:             "bool"
											description:      "Whether the destination index should be the only index in this alias. Defaults to false."
											description_kind: "markdown"
											optional:         true
										}
									}
									description:      "The aliases that the destination index for the transform should have."
									description_kind: "markdown"
								}
							}
							description:      "The destination for the transform."
							description_kind: "markdown"
						}
						min_items: 1
						max_items: 1
					}
					retention_policy: {
						nesting_mode: "list"
						block: {
							block_types: time: {
								nesting_mode: "list"
								block: {
									attributes: {
										field: {
											type:             "string"
											description:      "The date field that is used to calculate the age of the document."
											description_kind: "markdown"
											required:         true
										}
										max_age: {
											type:             "string"
											description:      "Specifies the maximum age of a document in the destination index."
											description_kind: "markdown"
											required:         true
										}
									}
									description:      "Specifies that the transform uses a time field to set the retention policy. This is currently the only supported option."
									description_kind: "markdown"
								}
								min_items: 1
								max_items: 1
							}
							description:      "Defines a retention policy for the transform."
							description_kind: "markdown"
						}
						max_items: 1
					}
					source: {
						nesting_mode: "list"
						block: {
							attributes: {
								indices: {
									type: ["list", "string"]
									description:      "The source indices for the transform."
									description_kind: "markdown"
									required:         true
								}
								query: {
									type:             "string"
									description:      "A query clause that retrieves a subset of data from the source index."
									description_kind: "markdown"
									optional:         true
								}
								runtime_mappings: {
									type:             "string"
									description:      "Definitions of search-time runtime fields that can be used by the transform."
									description_kind: "markdown"
									optional:         true
								}
							}
							description:      "The source of the data for the transform."
							description_kind: "markdown"
						}
						min_items: 1
						max_items: 1
					}
					sync: {
						nesting_mode: "list"
						block: {
							block_types: time: {
								nesting_mode: "list"
								block: {
									attributes: {
										delay: {
											type:             "string"
											description:      "The time delay between the current time and the latest input data time. The default value is 60s."
											description_kind: "markdown"
											optional:         true
										}
										field: {
											type:             "string"
											description:      "The date field that is used to identify new documents in the source."
											description_kind: "markdown"
											required:         true
										}
									}
									description:      "Specifies that the transform uses a time field to synchronize the source and destination indices. This is currently the only supported option."
									description_kind: "markdown"
								}
								min_items: 1
								max_items: 1
							}
							description:      "Defines the properties transforms require to run continuously."
							description_kind: "markdown"
						}
						max_items: 1
					}
				}
				description:      "Manages Elasticsearch transforms. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/transforms.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_watch: {
			version: 0
			block: {
				attributes: {
					actions: {
						type:             "string"
						description:      "The list of actions that will be run if the condition matches."
						description_kind: "markdown"
						optional:         true
					}
					active: {
						type:             "bool"
						description:      "Defines whether the watch is active or inactive by default. The default value is true, which means the watch is active by default."
						description_kind: "markdown"
						optional:         true
					}
					condition: {
						type:             "string"
						description:      "The condition that defines if the actions should be run."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource."
						description_kind: "markdown"
						computed:         true
					}
					input: {
						type:             "string"
						description:      "The input that defines the input that loads the data for the watch."
						description_kind: "markdown"
						optional:         true
					}
					metadata: {
						type:             "string"
						description:      "Metadata json that will be copied into the history entries."
						description_kind: "markdown"
						optional:         true
					}
					throttle_period_in_millis: {
						type:             "number"
						description:      "Minimum time in milliseconds between actions being run. Defaults to 5000."
						description_kind: "markdown"
						optional:         true
					}
					transform: {
						type:             "string"
						description:      "Processes the watch payload to prepare it for the watch actions."
						description_kind: "markdown"
						optional:         true
					}
					trigger: {
						type:             "string"
						description:      "The trigger that defines when the watch should run."
						description_kind: "markdown"
						required:         true
					}
					watch_id: {
						type:             "string"
						description:      "Identifier for the watch."
						description_kind: "markdown"
						required:         true
					}
				}
				description:      "Manage Watches. See, https://www.elastic.co/guide/en/elasticsearch/reference/current/watcher-api.html"
				description_kind: "markdown"
			}
		}
		elasticstack_fleet_agent_policy: {
			version: 0
			block: {
				attributes: {
					data_output_id: {
						type:             "string"
						description:      "The identifier for the data output."
						description_kind: "plain"
						optional:         true
					}
					description: {
						type:             "string"
						description:      "The description of the agent policy."
						description_kind: "plain"
						optional:         true
					}
					download_source_id: {
						type:             "string"
						description:      "The identifier for the Elastic Agent binary download server."
						description_kind: "plain"
						optional:         true
					}
					fleet_server_host_id: {
						type:             "string"
						description:      "The identifier for the Fleet server host."
						description_kind: "plain"
						optional:         true
					}
					global_data_tags: {
						nested_type: {
							attributes: {
								number_value: {
									type:             "number"
									description:      "Number value for the field. If this is set, string_value must not be defined."
									description_kind: "plain"
									optional:         true
								}
								string_value: {
									type:             "string"
									description:      "String value for the field. If this is set, number_value must not be defined."
									description_kind: "plain"
									optional:         true
								}
							}
							nesting_mode: "map"
						}
						description:      "User-defined data tags to apply to all inputs. Values can be strings (string_value) or numbers (number_value) but not both. Example -- key1 = {string_value = value1}, key2 = {number_value = 42}"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					id: {
						type:             "string"
						description:      "The ID of this resource."
						description_kind: "plain"
						computed:         true
					}
					monitor_logs: {
						type:             "bool"
						description:      "Enable collection of agent logs."
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					monitor_metrics: {
						type:             "bool"
						description:      "Enable collection of agent metrics."
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					monitoring_output_id: {
						type:             "string"
						description:      "The identifier for monitoring output."
						description_kind: "plain"
						optional:         true
					}
					name: {
						type:             "string"
						description:      "The name of the agent policy."
						description_kind: "plain"
						required:         true
					}
					namespace: {
						type:             "string"
						description:      "The namespace of the agent policy."
						description_kind: "plain"
						required:         true
					}
					policy_id: {
						type:             "string"
						description:      "Unique identifier of the agent policy."
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					skip_destroy: {
						type:             "bool"
						description:      "Set to true if you do not wish the agent policy to be deleted at destroy time, and instead just remove the agent policy from the Terraform state."
						description_kind: "plain"
						optional:         true
					}
					supports_agentless: {
						type:             "bool"
						description:      "Set to true to enable agentless data collection."
						description_kind: "plain"
						optional:         true
					}
					sys_monitoring: {
						type:             "bool"
						description:      "Enable collection of system logs and metrics."
						description_kind: "plain"
						optional:         true
					}
				}
				description:      "Creates a new Fleet Agent Policy. See https://www.elastic.co/guide/en/fleet/current/agent-policy.html"
				description_kind: "plain"
			}
		}
		elasticstack_fleet_integration: {
			version: 0
			block: {
				attributes: {
					force: {
						type:             "bool"
						description:      "Set to true to force the requested action."
						description_kind: "plain"
						optional:         true
					}
					id: {
						type:             "string"
						description:      "The ID of this resource."
						description_kind: "plain"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The integration package name."
						description_kind: "plain"
						required:         true
					}
					skip_destroy: {
						type:             "bool"
						description:      "Set to true if you do not wish the integration package to be uninstalled at destroy time, and instead just remove the integration package from the Terraform state."
						description_kind: "plain"
						optional:         true
					}
					version: {
						type:             "string"
						description:      "The integration package version."
						description_kind: "plain"
						required:         true
					}
				}
				description:      "Manage installation of a Fleet integration package."
				description_kind: "plain"
			}
		}
		elasticstack_fleet_integration_policy: {
			version: 1
			block: {
				attributes: {
					agent_policy_id: {
						type:             "string"
						description:      "ID of the agent policy."
						description_kind: "plain"
						required:         true
					}
					description: {
						type:             "string"
						description:      "The description of the integration policy."
						description_kind: "plain"
						optional:         true
					}
					enabled: {
						type:             "bool"
						description:      "Enable the integration policy."
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					force: {
						type:             "bool"
						description:      "Force operations, such as creation and deletion, to occur."
						description_kind: "plain"
						optional:         true
					}
					id: {
						type:             "string"
						description:      "The ID of this resource."
						description_kind: "plain"
						computed:         true
					}
					integration_name: {
						type:             "string"
						description:      "The name of the integration package."
						description_kind: "plain"
						required:         true
					}
					integration_version: {
						type:             "string"
						description:      "The version of the integration package."
						description_kind: "plain"
						required:         true
					}
					name: {
						type:             "string"
						description:      "The name of the integration policy."
						description_kind: "plain"
						required:         true
					}
					namespace: {
						type:             "string"
						description:      "The namespace of the integration policy."
						description_kind: "plain"
						required:         true
					}
					policy_id: {
						type:             "string"
						description:      "Unique identifier of the integration policy."
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					vars_json: {
						type:             "string"
						description:      "Integration-level variables as JSON."
						description_kind: "plain"
						optional:         true
						computed:         true
						sensitive:        true
					}
				}
				block_types: input: {
					nesting_mode: "list"
					block: {
						attributes: {
							enabled: {
								type:             "bool"
								description:      "Enable the input."
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							input_id: {
								type:             "string"
								description:      "The identifier of the input."
								description_kind: "plain"
								required:         true
							}
							streams_json: {
								type:             "string"
								description:      "Input streams as JSON."
								description_kind: "plain"
								optional:         true
								computed:         true
								sensitive:        true
							}
							vars_json: {
								type:             "string"
								description:      "Input variables as JSON."
								description_kind: "plain"
								optional:         true
								computed:         true
								sensitive:        true
							}
						}
						description:      "Integration inputs."
						description_kind: "plain"
					}
				}
				description:      "Creates a new Fleet Integration Policy. See https://www.elastic.co/guide/en/fleet/current/add-integration-to-policy.html"
				description_kind: "plain"
			}
		}
		elasticstack_fleet_output: {
			version: 0
			block: {
				attributes: {
					ca_sha256: {
						type:             "string"
						description:      "Fingerprint of the Elasticsearch CA certificate."
						description_kind: "plain"
						optional:         true
					}
					ca_trusted_fingerprint: {
						type:             "string"
						description:      "Fingerprint of trusted CA."
						description_kind: "plain"
						optional:         true
					}
					config_yaml: {
						type:             "string"
						description:      "Advanced YAML configuration. YAML settings here will be added to the output section of each agent policy."
						description_kind: "plain"
						optional:         true
						sensitive:        true
					}
					default_integrations: {
						type:             "bool"
						description:      "Make this output the default for agent integrations."
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					default_monitoring: {
						type:             "bool"
						description:      "Make this output the default for agent monitoring."
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					hosts: {
						type: ["list", "string"]
						description:      "A list of hosts."
						description_kind: "plain"
						optional:         true
					}
					id: {
						type:             "string"
						description:      "The ID of this resource."
						description_kind: "plain"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The name of the output."
						description_kind: "plain"
						required:         true
					}
					output_id: {
						type:             "string"
						description:      "Unique identifier of the output."
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					type: {
						type:             "string"
						description:      "The output type."
						description_kind: "plain"
						required:         true
					}
				}
				block_types: ssl: {
					nesting_mode: "list"
					block: {
						attributes: {
							certificate: {
								type:             "string"
								description:      "Client SSL certificate."
								description_kind: "plain"
								required:         true
							}
							certificate_authorities: {
								type: ["list", "string"]
								description:      "Server SSL certificate authorities."
								description_kind: "plain"
								optional:         true
							}
							key: {
								type:             "string"
								description:      "Client SSL certificate key."
								description_kind: "plain"
								required:         true
								sensitive:        true
							}
						}
						description:      "SSL configuration."
						description_kind: "plain"
					}
				}
				description:      "Creates a new Fleet Output."
				description_kind: "plain"
			}
		}
		elasticstack_fleet_server_host: {
			version: 0
			block: {
				attributes: {
					default: {
						type:             "bool"
						description:      "Set as default."
						description_kind: "plain"
						optional:         true
					}
					host_id: {
						type:             "string"
						description:      "Unique identifier of the Fleet server host."
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					hosts: {
						type: ["list", "string"]
						description:      "A list of hosts."
						description_kind: "plain"
						required:         true
					}
					id: {
						type:             "string"
						description:      "The ID of this resource."
						description_kind: "plain"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The name of the Fleet server host."
						description_kind: "plain"
						required:         true
					}
				}
				description:      "Creates a new Fleet Server Host."
				description_kind: "plain"
			}
		}
		elasticstack_kibana_action_connector: {
			version: 0
			block: {
				attributes: {
					config: {
						type:             "string"
						description:      "The configuration for the connector. Configuration properties vary depending on the connector type."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					connector_id: {
						type:             "string"
						description:      "A UUID v1 or v4 to use instead of a randomly generated ID."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					connector_type_id: {
						type:             "string"
						description:      "The ID of the connector type, e.g. `.index`."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					is_deprecated: {
						type:             "bool"
						description:      "Indicates whether the connector type is deprecated."
						description_kind: "markdown"
						computed:         true
					}
					is_missing_secrets: {
						type:             "bool"
						description:      "Indicates whether secrets are missing for the connector."
						description_kind: "markdown"
						computed:         true
					}
					is_preconfigured: {
						type:             "bool"
						description:      "Indicates whether it is a preconfigured connector."
						description_kind: "markdown"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The name of the connector. While this name does not have to be unique, a distinctive name can help you identify a connector."
						description_kind: "markdown"
						required:         true
					}
					secrets: {
						type:             "string"
						description:      "The secrets configuration for the connector. Secrets configuration properties vary depending on the connector type."
						description_kind: "markdown"
						optional:         true
						sensitive:        true
					}
					space_id: {
						type:             "string"
						description:      "An identifier for the space. If space_id is not provided, the default space is used."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Creates a Kibana action connector. See https://www.elastic.co/guide/en/kibana/current/action-types.html"
				description_kind: "markdown"
			}
		}
		elasticstack_kibana_alerting_rule: {
			version: 0
			block: {
				attributes: {
					alert_delay: {
						type:             "number"
						description:      "A number that indicates how many consecutive runs need to meet the rule conditions for an alert to occur."
						description_kind: "markdown"
						optional:         true
					}
					consumer: {
						type:             "string"
						description:      "The name of the application or feature that owns the rule."
						description_kind: "markdown"
						required:         true
					}
					enabled: {
						type:             "bool"
						description:      "Indicates if you want to run the rule on an interval basis."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					interval: {
						type:             "string"
						description:      "The check interval, which specifies how frequently the rule conditions are checked. The interval must be specified in seconds, minutes, hours or days."
						description_kind: "markdown"
						required:         true
					}
					last_execution_date: {
						type:             "string"
						description:      "Date of the last execution of this rule."
						description_kind: "markdown"
						computed:         true
					}
					last_execution_status: {
						type:             "string"
						description:      "Status of the last execution of this rule."
						description_kind: "markdown"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The name of the rule. While this name does not have to be unique, a distinctive name can help you identify a rule."
						description_kind: "markdown"
						required:         true
					}
					notify_when: {
						type:             "string"
						description:      "Required until v8.6.0. Deprecated in v8.13.0. Use the `notify_when` property in the action `frequency` object instead. Defines how often alerts generate actions. Valid values include: `onActionGroupChange`: Actions run when the alert status changes; `onActiveAlert`: Actions run when the alert becomes active and at each check interval while the rule conditions are met; `onThrottleInterval`: Actions run when the alert becomes active and at the interval specified in the throttle property while the rule conditions are met. NOTE: This is a rule level property; if you update the rule in Kibana, it is automatically changed to use action-specific `notify_when` values."
						description_kind: "markdown"
						optional:         true
					}
					params: {
						type:             "string"
						description:      "The rule parameters, which differ for each rule type."
						description_kind: "markdown"
						required:         true
					}
					rule_id: {
						type:             "string"
						description:      "The identifier for the rule. Until Kibana version 8.17.0 this should be a UUID v1 or v4, for later versions any format can be used. If it is omitted, an ID is randomly generated."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					rule_type_id: {
						type:             "string"
						description:      "The ID of the rule type that you want to call when the rule is scheduled to run. For more information about the valid values, list the rule types using [Get rule types API](https://www.elastic.co/guide/en/kibana/master/list-rule-types-api.html) or refer to the [Rule types documentation](https://www.elastic.co/guide/en/kibana/master/rule-types.html)."
						description_kind: "markdown"
						required:         true
					}
					scheduled_task_id: {
						type:             "string"
						description:      "ID of the scheduled task that will execute the alert."
						description_kind: "markdown"
						computed:         true
					}
					space_id: {
						type:             "string"
						description:      "An identifier for the space. If space_id is not provided, the default space is used."
						description_kind: "markdown"
						optional:         true
					}
					tags: {
						type: ["list", "string"]
						description:      "A list of tag names that are applied to the rule."
						description_kind: "markdown"
						optional:         true
					}
					throttle: {
						type:             "string"
						description:      "Deprecated in 8.13.0. Defines how often an alert generates repeated actions. This custom action interval must be specified in seconds, minutes, hours, or days. For example, 10m or 1h. This property is applicable only if `notify_when` is `onThrottleInterval`. NOTE: This is a rule level property; if you update the rule in Kibana, it is automatically changed to use action-specific `throttle` values."
						description_kind: "markdown"
						optional:         true
					}
				}
				block_types: actions: {
					nesting_mode: "list"
					block: {
						attributes: {
							group: {
								type:             "string"
								description:      "The group name, which affects when the action runs (for example, when the threshold is met or when the alert is recovered). Each rule type has a list of valid action group names."
								description_kind: "markdown"
								optional:         true
							}
							id: {
								type:             "string"
								description:      "The identifier for the connector saved object."
								description_kind: "markdown"
								required:         true
							}
							params: {
								type:             "string"
								description:      "The parameters for the action, which are sent to the connector."
								description_kind: "markdown"
								required:         true
							}
						}
						block_types: {
							alerts_filter: {
								nesting_mode: "list"
								block: {
									attributes: kql: {
										type:             "string"
										description:      "Defines a query filter that determines whether the action runs. Written in Kibana Query Language (KQL)."
										description_kind: "markdown"
										optional:         true
									}
									block_types: timeframe: {
										nesting_mode: "list"
										block: {
											attributes: {
												days: {
													type: ["list", "number"]
													description:      "Defines the days of the week that the action can run, represented as an array of numbers. For example, 1 represents Monday. An empty array is equivalent to specifying all the days of the week."
													description_kind: "markdown"
													required:         true
												}
												hours_end: {
													type:             "string"
													description:      "Defines the range of time in a day that the action can run. The end of the time frame in 24-hour notation (hh:mm)."
													description_kind: "markdown"
													required:         true
												}
												hours_start: {
													type:             "string"
													description:      "Defines the range of time in a day that the action can run. The start of the time frame in 24-hour notation (hh:mm)."
													description_kind: "markdown"
													required:         true
												}
												timezone: {
													type:             "string"
													description:      "The ISO time zone for the hours values. Values such as UTC and UTC+1 also work but lack built-in daylight savings time support and are not recommended."
													description_kind: "markdown"
													required:         true
												}
											}
											description:      "Defines a period that limits whether the action runs."
											description_kind: "markdown"
										}
										max_items: 1
									}
									description:      "Conditions that affect whether the action runs. If you specify multiple conditions, all conditions must be met for the action to run. For example, if an alert occurs within the specified time frame and matches the query, the action runs."
									description_kind: "markdown"
								}
								max_items: 1
							}
							frequency: {
								nesting_mode: "list"
								block: {
									attributes: {
										notify_when: {
											type:             "string"
											description:      "Defines how often alerts generate actions. Valid values include: `onActionGroupChange`: Actions run when the alert status changes; `onActiveAlert`: Actions run when the alert becomes active and at each check interval while the rule conditions are met; `onThrottleInterval`: Actions run when the alert becomes active and at the interval specified in the throttle property while the rule conditions are met. NOTE: This is a rule level property; if you update the rule in Kibana, it is automatically changed to use action-specific `notify_when` values."
											description_kind: "markdown"
											required:         true
										}
										summary: {
											type:             "bool"
											description:      "Indicates whether the action is a summary."
											description_kind: "markdown"
											required:         true
										}
										throttle: {
											type:             "string"
											description:      "Defines how often an alert generates repeated actions. This custom action interval must be specified in seconds, minutes, hours, or days. For example, 10m or 1h. This property is applicable only if `notify_when` is `onThrottleInterval`. NOTE: This is a rule level property; if you update the rule in Kibana, it is automatically changed to use action-specific `throttle` values."
											description_kind: "markdown"
											optional:         true
										}
									}
									description:      "The properties that affect how often actions are generated. If the rule type supports setting summary to true, the action can be a summary of alerts at the specified notification interval. Otherwise, an action runs for each alert at the specified notification interval. NOTE: You cannot specify these parameters when `notify_when` or `throttle` are defined at the rule level."
									description_kind: "markdown"
								}
								max_items: 1
							}
						}
						description:      "An action that runs under defined conditions."
						description_kind: "markdown"
					}
				}
				description:      "Creates a Kibana rule. See https://www.elastic.co/guide/en/kibana/master/create-rule-api.html"
				description_kind: "markdown"
			}
		}
		elasticstack_kibana_data_view: {
			version: 0
			block: {
				attributes: {
					data_view: {
						nested_type: {
							attributes: {
								allow_no_index: {
									type:             "bool"
									description:      "Allows the Data view saved object to exist before the data is available."
									description_kind: "plain"
									optional:         true
									computed:         true
								}
								field_attrs: {
									nested_type: {
										attributes: {
											count: {
												type:             "number"
												description:      "Popularity count for the field."
												description_kind: "plain"
												optional:         true
											}
											custom_label: {
												type:             "string"
												description:      "Custom label for the field."
												description_kind: "plain"
												optional:         true
											}
										}
										nesting_mode: "map"
									}
									description:      "Map of field attributes by field name."
									description_kind: "plain"
									optional:         true
								}
								field_formats: {
									nested_type: {
										attributes: {
											id: {
												type:             "string"
												description:      "The ID of the field format. Valid values include: `boolean`, `color`, `date`, `duration`, `number`, `percent`, `relative_date`, `static_lookup`, `string`, `truncate`, `url`."
												description_kind: "markdown"
												required:         true
											}
											params: {
												nested_type: {
													attributes: {
														colors: {
															nested_type: {
																attributes: {
																	background: {
																		type:             "string"
																		description:      "Background color in hex format."
																		description_kind: "markdown"
																		optional:         true
																	}
																	range: {
																		type:             "string"
																		description:      "Range for the color rule (e.g., `-Infinity:Infinity`)."
																		description_kind: "markdown"
																		optional:         true
																	}
																	regex: {
																		type:             "string"
																		description:      "Regex pattern for the color rule."
																		description_kind: "markdown"
																		optional:         true
																	}
																	text: {
																		type:             "string"
																		description:      "Text color in hex format."
																		description_kind: "markdown"
																		optional:         true
																	}
																}
																nesting_mode: "list"
															}
															description:      "Color rules for the field."
															description_kind: "markdown"
															optional:         true
														}
														field_length: {
															type:             "number"
															description:      "Length to truncate the field value."
															description_kind: "markdown"
															optional:         true
														}
														field_type: {
															type:             "string"
															description:      "Field type for color formatting (e.g., `string`, `number`)."
															description_kind: "markdown"
															optional:         true
														}
														height: {
															type:             "number"
															description:      "Height for image type URLs."
															description_kind: "markdown"
															optional:         true
														}
														include_space_with_suffix: {
															type:             "bool"
															description:      "Whether to include a space before the suffix in duration format."
															description_kind: "markdown"
															optional:         true
														}
														input_format: {
															type:             "string"
															description:      "Input format for duration fields (e.g., `hours`, `minutes`)."
															description_kind: "markdown"
															optional:         true
														}
														labeltemplate: {
															type:             "string"
															description:      "Label template for the field value."
															description_kind: "markdown"
															optional:         true
														}
														lookup_entries: {
															nested_type: {
																attributes: {
																	key: {
																		type:             "string"
																		description:      "Key for the lookup entry."
																		description_kind: "markdown"
																		required:         true
																	}
																	value: {
																		type:             "string"
																		description:      "Value for the lookup entry."
																		description_kind: "markdown"
																		required:         true
																	}
																}
																nesting_mode: "list"
															}
															description:      "Key-value pairs for static lookup."
															description_kind: "markdown"
															optional:         true
														}
														output_format: {
															type:             "string"
															description:      "Output format for duration fields (e.g., `humanizePrecise`, `humanize`)."
															description_kind: "markdown"
															optional:         true
														}
														output_precision: {
															type:             "number"
															description:      "Precision for duration output."
															description_kind: "markdown"
															optional:         true
														}
														pattern: {
															type:             "string"
															description:      "Pattern for formatting the field value."
															description_kind: "markdown"
															optional:         true
														}
														timezone: {
															type:             "string"
															description:      "Timezone for date formatting (e.g., `America/New_York`)."
															description_kind: "markdown"
															optional:         true
														}
														transform: {
															type:             "string"
															description:      "Transform to apply to string fields (e.g., `upper`, `lower`)."
															description_kind: "markdown"
															optional:         true
														}
														type: {
															type:             "string"
															description:      "Type of URL format (e.g., `a`, `img`, `audio`)."
															description_kind: "markdown"
															optional:         true
														}
														unknown_key_value: {
															type:             "string"
															description:      "Value to display when key is not found in lookup."
															description_kind: "markdown"
															optional:         true
														}
														urltemplate: {
															type:             "string"
															description:      "URL template for the field value."
															description_kind: "markdown"
															optional:         true
														}
														use_short_suffix: {
															type:             "bool"
															description:      "Whether to use short suffixes in duration format."
															description_kind: "markdown"
															optional:         true
														}
														width: {
															type:             "number"
															description:      "Width for image type URLs."
															description_kind: "markdown"
															optional:         true
														}
													}
													nesting_mode: "single"
												}
												description_kind: "plain"
												optional:         true
											}
										}
										nesting_mode: "map"
									}
									description:      "Map of field formats by field name."
									description_kind: "plain"
									optional:         true
								}
								id: {
									type:             "string"
									description:      "Saved object ID."
									description_kind: "plain"
									optional:         true
									computed:         true
								}
								name: {
									type:             "string"
									description:      "The Data view name."
									description_kind: "plain"
									optional:         true
									computed:         true
								}
								namespaces: {
									type: ["list", "string"]
									description:      "Array of space IDs for sharing the Data view between multiple spaces."
									description_kind: "plain"
									optional:         true
								}
								runtime_field_map: {
									nested_type: {
										attributes: {
											script_source: {
												type:             "string"
												description:      "Script of the runtime field."
												description_kind: "plain"
												required:         true
											}
											type: {
												type:             "string"
												description:      "Mapping type of the runtime field. For more information, check [Field data types](https://www.elastic.co/guide/en/elasticsearch/reference/8.11/mapping-types.html)."
												description_kind: "markdown"
												required:         true
											}
										}
										nesting_mode: "map"
									}
									description:      "Map of runtime field definitions by field name."
									description_kind: "plain"
									optional:         true
								}
								source_filters: {
									type: ["list", "string"]
									description:      "List of field names you want to filter out in Discover."
									description_kind: "plain"
									optional:         true
								}
								time_field_name: {
									type:             "string"
									description:      "Timestamp field name, which you use for time-based Data views."
									description_kind: "plain"
									optional:         true
									computed:         true
								}
								title: {
									type:             "string"
									description:      "Comma-separated list of data streams, indices, and aliases that you want to search. Supports wildcards (*)."
									description_kind: "plain"
									required:         true
								}
							}
							nesting_mode: "single"
						}
						description_kind: "plain"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Generated ID for the data view."
						description_kind: "markdown"
						computed:         true
					}
					override: {
						type:             "bool"
						description:      "Overrides an existing data view if a data view with the provided title already exists."
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					space_id: {
						type:             "string"
						description:      "An identifier for the space. If space_id is not provided, the default space is used."
						description_kind: "plain"
						optional:         true
						computed:         true
					}
				}
				description:      "Manages Kibana data views"
				description_kind: "plain"
			}
		}
		elasticstack_kibana_import_saved_objects: {
			version: 0
			block: {
				attributes: {
					errors: {
						type: ["list", ["object", {
							error: ["object", {
								type: "string"
							}]
							id: "string"
							meta: ["object", {
								icon:  "string"
								title: "string"
							}]
							title: "string"
							type:  "string"
						}]]
						description_kind: "plain"
						computed:         true
					}
					file_contents: {
						type:             "string"
						description:      "The contents of the exported saved objects file."
						description_kind: "plain"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Generated ID for the import."
						description_kind: "markdown"
						computed:         true
					}
					ignore_import_errors: {
						type:             "bool"
						description:      "If set to true, errors during the import process will not fail the configuration application"
						description_kind: "plain"
						optional:         true
					}
					overwrite: {
						type:             "bool"
						description:      "Overwrites saved objects when they already exist. When used, potential conflict errors are automatically resolved by overwriting the destination object."
						description_kind: "plain"
						optional:         true
					}
					space_id: {
						type:             "string"
						description:      "An identifier for the space. If space_id is not provided, the default space is used."
						description_kind: "plain"
						optional:         true
					}
					success: {
						type:             "bool"
						description:      "Indicates when the import was successfully completed. When set to false, some objects may not have been created. For additional information, refer to the errors and success_results properties."
						description_kind: "plain"
						computed:         true
					}
					success_count: {
						type:             "number"
						description:      "Indicates the number of successfully imported records."
						description_kind: "plain"
						computed:         true
					}
					success_results: {
						type: ["list", ["object", {
							destination_id: "string"
							id:             "string"
							meta: ["object", {
								icon:  "string"
								title: "string"
							}]
							type: "string"
						}]]
						description_kind: "plain"
						computed:         true
					}
				}
				description:      "Imports saved objects from the referenced file"
				description_kind: "plain"
			}
		}
		elasticstack_kibana_security_role: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Optional description for the role"
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					metadata: {
						type:             "string"
						description:      "Optional meta-data."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The name for the role."
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: {
					elasticsearch: {
						nesting_mode: "set"
						block: {
							attributes: {
								cluster: {
									type: ["set", "string"]
									description:      "List of the cluster privileges."
									description_kind: "markdown"
									optional:         true
								}
								run_as: {
									type: ["set", "string"]
									description:      "A list of usernames the owners of this role can impersonate."
									description_kind: "markdown"
									optional:         true
								}
							}
							block_types: {
								indices: {
									nesting_mode: "set"
									block: {
										attributes: {
											names: {
												type: ["set", "string"]
												description:      "A list of indices (or index name patterns) to which the permissions in this entry apply."
												description_kind: "markdown"
												required:         true
											}
											privileges: {
												type: ["set", "string"]
												description:      "The index level privileges that the owners of the role have on the specified indices."
												description_kind: "markdown"
												required:         true
											}
											query: {
												type:             "string"
												description:      "A search query that defines the documents the owners of the role have read access to."
												description_kind: "markdown"
												optional:         true
											}
										}
										block_types: field_security: {
											nesting_mode: "list"
											block: {
												attributes: {
													except: {
														type: ["set", "string"]
														description:      "List of the fields to which the grants will not be applied."
														description_kind: "markdown"
														optional:         true
													}
													grant: {
														type: ["set", "string"]
														description:      "List of the fields to grant the access to."
														description_kind: "markdown"
														optional:         true
													}
												}
												description:      "The document fields that the owners of the role have read access to."
												description_kind: "markdown"
											}
											max_items: 1
										}
										description:      "A list of indices permissions entries."
										description_kind: "markdown"
									}
								}
								remote_indices: {
									nesting_mode: "set"
									block: {
										attributes: {
											clusters: {
												type: ["set", "string"]
												description:      "A list of cluster aliases to which the permissions in this entry apply."
												description_kind: "markdown"
												required:         true
											}
											names: {
												type: ["set", "string"]
												description:      "A list of indices (or index name patterns) to which the permissions in this entry apply."
												description_kind: "markdown"
												required:         true
											}
											privileges: {
												type: ["set", "string"]
												description:      "The index level privileges that the owners of the role have on the specified indices."
												description_kind: "markdown"
												required:         true
											}
											query: {
												type:             "string"
												description:      "A search query that defines the documents the owners of the role have read access to."
												description_kind: "markdown"
												optional:         true
											}
										}
										block_types: field_security: {
											nesting_mode: "list"
											block: {
												attributes: {
													except: {
														type: ["set", "string"]
														description:      "List of the fields to which the grants will not be applied."
														description_kind: "markdown"
														optional:         true
													}
													grant: {
														type: ["set", "string"]
														description:      "List of the fields to grant the access to."
														description_kind: "markdown"
														optional:         true
													}
												}
												description:      "The document fields that the owners of the role have read access to."
												description_kind: "markdown"
											}
											max_items: 1
										}
										description:      "A list of remote indices permissions entries. Remote indices are effective for remote clusters configured with the API key based model. They have no effect for remote clusters configured with the certificate based model."
										description_kind: "markdown"
									}
								}
							}
							description:      "Elasticsearch cluster and index privileges."
							description_kind: "markdown"
						}
						min_items: 1
						max_items: 1
					}
					kibana: {
						nesting_mode: "set"
						block: {
							attributes: {
								base: {
									type: ["set", "string"]
									description:      "A base privilege. When specified, the base must be [\"all\"] or [\"read\"]. When the base privileges are specified, you are unable to use the \"feature\" section."
									description_kind: "markdown"
									optional:         true
								}
								spaces: {
									type: ["set", "string"]
									description:      "The spaces to apply the privileges to. To grant access to all spaces, set to [\"*\"], or omit the value."
									description_kind: "markdown"
									required:         true
								}
							}
							block_types: feature: {
								nesting_mode: "set"
								block: {
									attributes: {
										name: {
											type:             "string"
											description:      "Feature name."
											description_kind: "markdown"
											required:         true
										}
										privileges: {
											type: ["set", "string"]
											description:      "Feature privileges."
											description_kind: "markdown"
											required:         true
										}
									}
									description:      "List of privileges for specific features. When the feature privileges are specified, you are unable to use the \"base\" section."
									description_kind: "markdown"
								}
							}
							description:      "The list of objects that specify the Kibana privileges for the role."
							description_kind: "markdown"
						}
					}
				}
				description:      "Creates a Kibana role. See, https://www.elastic.co/guide/en/kibana/master/role-management-api-put.html"
				description_kind: "markdown"
			}
		}
		elasticstack_kibana_slo: {
			version: 1
			block: {
				attributes: {
					budgeting_method: {
						type:             "string"
						description:      "An `occurrences` budgeting method uses the number of good and total events during the time window. A `timeslices` budgeting method uses the number of good slices and total slices during the time window. A slice is an arbitrary time window (smaller than the overall SLO time window) that is either considered good or bad, calculated from the timeslice threshold and the ratio of good over total events that happened during the slice window. A budgeting method is required and must be either occurrences or timeslices."
						description_kind: "markdown"
						required:         true
					}
					description: {
						type:             "string"
						description:      "A description for the SLO."
						description_kind: "markdown"
						required:         true
					}
					group_by: {
						type: ["list", "string"]
						description:      "Optional group by fields to use to generate an SLO per distinct value."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The name of the SLO."
						description_kind: "markdown"
						required:         true
					}
					slo_id: {
						type:             "string"
						description:      "An ID (8 and 36 characters). If omitted, a UUIDv1 will be generated server-side."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					space_id: {
						type:             "string"
						description:      "An identifier for the space. If space_id is not provided, the default space is used."
						description_kind: "markdown"
						optional:         true
					}
					tags: {
						type: ["list", "string"]
						description:      "The tags for the SLO."
						description_kind: "markdown"
						optional:         true
					}
				}
				block_types: {
					apm_availability_indicator: {
						nesting_mode: "list"
						block: {
							attributes: {
								environment: {
									type:             "string"
									description_kind: "plain"
									required:         true
								}
								filter: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								index: {
									type:             "string"
									description_kind: "plain"
									required:         true
								}
								service: {
									type:             "string"
									description_kind: "plain"
									required:         true
								}
								transaction_name: {
									type:             "string"
									description_kind: "plain"
									required:         true
								}
								transaction_type: {
									type:             "string"
									description_kind: "plain"
									required:         true
								}
							}
							description_kind: "plain"
						}
						max_items: 1
					}
					apm_latency_indicator: {
						nesting_mode: "list"
						block: {
							attributes: {
								environment: {
									type:             "string"
									description_kind: "plain"
									required:         true
								}
								filter: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								index: {
									type:             "string"
									description_kind: "plain"
									required:         true
								}
								service: {
									type:             "string"
									description_kind: "plain"
									required:         true
								}
								threshold: {
									type:             "number"
									description_kind: "plain"
									required:         true
								}
								transaction_name: {
									type:             "string"
									description_kind: "plain"
									required:         true
								}
								transaction_type: {
									type:             "string"
									description_kind: "plain"
									required:         true
								}
							}
							description_kind: "plain"
						}
						max_items: 1
					}
					histogram_custom_indicator: {
						nesting_mode: "list"
						block: {
							attributes: {
								filter: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								index: {
									type:             "string"
									description_kind: "plain"
									required:         true
								}
								timestamp_field: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
							}
							block_types: {
								good: {
									nesting_mode: "list"
									block: {
										attributes: {
											aggregation: {
												type:             "string"
												description_kind: "plain"
												required:         true
											}
											field: {
												type:             "string"
												description_kind: "plain"
												required:         true
											}
											filter: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											from: {
												type:             "number"
												description_kind: "plain"
												optional:         true
											}
											to: {
												type:             "number"
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
									min_items: 1
									max_items: 1
								}
								total: {
									nesting_mode: "list"
									block: {
										attributes: {
											aggregation: {
												type:             "string"
												description_kind: "plain"
												required:         true
											}
											field: {
												type:             "string"
												description_kind: "plain"
												required:         true
											}
											filter: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											from: {
												type:             "number"
												description_kind: "plain"
												optional:         true
											}
											to: {
												type:             "number"
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
									min_items: 1
									max_items: 1
								}
							}
							description_kind: "plain"
						}
						max_items: 1
					}
					kql_custom_indicator: {
						nesting_mode: "list"
						block: {
							attributes: {
								filter: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								good: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								index: {
									type:             "string"
									description_kind: "plain"
									required:         true
								}
								timestamp_field: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								total: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
							}
							description_kind: "plain"
						}
						max_items: 1
					}
					metric_custom_indicator: {
						nesting_mode: "list"
						block: {
							attributes: {
								filter: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								index: {
									type:             "string"
									description_kind: "plain"
									required:         true
								}
								timestamp_field: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
							}
							block_types: {
								good: {
									nesting_mode: "list"
									block: {
										attributes: equation: {
											type:             "string"
											description_kind: "plain"
											required:         true
										}
										block_types: metrics: {
											nesting_mode: "list"
											block: {
												attributes: {
													aggregation: {
														type:             "string"
														description_kind: "plain"
														required:         true
													}
													field: {
														type:             "string"
														description_kind: "plain"
														required:         true
													}
													filter: {
														type:             "string"
														description_kind: "plain"
														optional:         true
													}
													name: {
														type:             "string"
														description_kind: "plain"
														required:         true
													}
												}
												description_kind: "plain"
											}
											min_items: 1
										}
										description_kind: "plain"
									}
									min_items: 1
									max_items: 1
								}
								total: {
									nesting_mode: "list"
									block: {
										attributes: equation: {
											type:             "string"
											description_kind: "plain"
											required:         true
										}
										block_types: metrics: {
											nesting_mode: "list"
											block: {
												attributes: {
													aggregation: {
														type:             "string"
														description_kind: "plain"
														required:         true
													}
													field: {
														type:             "string"
														description_kind: "plain"
														required:         true
													}
													filter: {
														type:             "string"
														description_kind: "plain"
														optional:         true
													}
													name: {
														type:             "string"
														description_kind: "plain"
														required:         true
													}
												}
												description_kind: "plain"
											}
											min_items: 1
										}
										description_kind: "plain"
									}
									min_items: 1
									max_items: 1
								}
							}
							description_kind: "plain"
						}
						max_items: 1
					}
					objective: {
						nesting_mode: "list"
						block: {
							attributes: {
								target: {
									type:             "number"
									description_kind: "plain"
									required:         true
								}
								timeslice_target: {
									type:             "number"
									description_kind: "plain"
									optional:         true
								}
								timeslice_window: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
							}
							description:      "The target objective is the value the SLO needs to meet during the time window. If a timeslices budgeting method is used, we also need to define the timesliceTarget which can be different than the overall SLO target."
							description_kind: "markdown"
						}
						min_items: 1
						max_items: 1
					}
					settings: {
						nesting_mode: "list"
						block: {
							attributes: {
								frequency: {
									type:             "string"
									description_kind: "plain"
									optional:         true
									computed:         true
								}
								sync_delay: {
									type:             "string"
									description_kind: "plain"
									optional:         true
									computed:         true
								}
							}
							description:      "The default settings should be sufficient for most users, but if needed, these properties can be overwritten."
							description_kind: "markdown"
						}
						max_items: 1
					}
					time_window: {
						nesting_mode: "list"
						block: {
							attributes: {
								duration: {
									type:             "string"
									description_kind: "plain"
									required:         true
								}
								type: {
									type:             "string"
									description_kind: "plain"
									required:         true
								}
							}
							description:      "Currently support `calendarAligned` and `rolling` time windows. Any duration greater than 1 day can be used: days, weeks, months, quarters, years. Rolling time window requires a duration, e.g. `1w` for one week, and type: `rolling`. SLOs defined with such time window, will only consider the SLI data from the last duration period as a moving window. Calendar aligned time window requires a duration, limited to `1M` for monthly or `1w` for weekly, and type: `calendarAligned`."
							description_kind: "markdown"
						}
						min_items: 1
						max_items: 1
					}
					timeslice_metric_indicator: {
						nesting_mode: "list"
						block: {
							attributes: {
								filter: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								index: {
									type:             "string"
									description_kind: "plain"
									required:         true
								}
								timestamp_field: {
									type:             "string"
									description_kind: "plain"
									required:         true
								}
							}
							block_types: metric: {
								nesting_mode: "list"
								block: {
									attributes: {
										comparator: {
											type:             "string"
											description_kind: "plain"
											required:         true
										}
										equation: {
											type:             "string"
											description_kind: "plain"
											required:         true
										}
										threshold: {
											type:             "number"
											description_kind: "plain"
											required:         true
										}
									}
									block_types: metrics: {
										nesting_mode: "list"
										block: {
											attributes: {
												aggregation: {
													type:             "string"
													description:      "The aggregation type for this metric. One of: sum, avg, min, max, value_count, percentile, doc_count. Determines which other fields are required:"
													description_kind: "markdown"
													required:         true
												}
												field: {
													type:             "string"
													description:      "Field to aggregate. Required for aggregations: sum, avg, min, max, value_count, percentile. Must NOT be set for doc_count."
													description_kind: "markdown"
													optional:         true
												}
												filter: {
													type:             "string"
													description:      "Optional KQL filter for this metric. Supported for all aggregations except doc_count."
													description_kind: "markdown"
													optional:         true
												}
												name: {
													type:             "string"
													description:      "The unique name for this metric. Used as a variable in the equation field."
													description_kind: "markdown"
													required:         true
												}
												percentile: {
													type:             "number"
													description:      "Percentile value (e.g., 99). Required if aggregation is 'percentile'. Must NOT be set for other aggregations."
													description_kind: "markdown"
													optional:         true
												}
											}
											description_kind: "plain"
										}
										min_items: 1
									}
									description_kind: "plain"
								}
								min_items: 1
								max_items: 1
							}
							description:      "Defines a timeslice metric indicator for SLO."
							description_kind: "markdown"
						}
						max_items: 1
					}
				}
				description:      "Creates an SLO."
				description_kind: "markdown"
			}
		}
		elasticstack_kibana_space: {
			version: 0
			block: {
				attributes: {
					color: {
						type:             "string"
						description:      "The hexadecimal color code used in the space avatar. By default, the color is automatically generated from the space name."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					description: {
						type:             "string"
						description:      "The description for the space."
						description_kind: "markdown"
						optional:         true
					}
					disabled_features: {
						type: ["set", "string"]
						description:      "The list of disabled features for the space. To get a list of available feature IDs, use the Features API (https://www.elastic.co/guide/en/kibana/master/features-api-get.html)."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource."
						description_kind: "markdown"
						computed:         true
					}
					image_url: {
						type:             "string"
						description:      "The data-URL encoded image to display in the space avatar."
						description_kind: "markdown"
						optional:         true
					}
					initials: {
						type:             "string"
						description:      "The initials shown in the space avatar. By default, the initials are automatically generated from the space name. Initials must be 1 or 2 characters."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The display name for the space."
						description_kind: "markdown"
						required:         true
					}
					space_id: {
						type:             "string"
						description:      "The space ID that is part of the Kibana URL when inside the space."
						description_kind: "markdown"
						required:         true
					}
				}
				description:      "Creates a Kibana space. See, https://www.elastic.co/guide/en/kibana/master/spaces-api-post.html"
				description_kind: "markdown"
			}
		}
		elasticstack_kibana_synthetics_monitor: {
			version: 0
			block: {
				attributes: {
					alert: {
						nested_type: {
							attributes: {
								status: {
									nested_type: {
										attributes: enabled: {
											type:             "bool"
											description_kind: "plain"
											optional:         true
											computed:         true
										}
										nesting_mode: "single"
									}
									description_kind: "plain"
									optional:         true
								}
								tls: {
									nested_type: {
										attributes: enabled: {
											type:             "bool"
											description_kind: "plain"
											optional:         true
											computed:         true
										}
										nesting_mode: "single"
									}
									description_kind: "plain"
									optional:         true
								}
							}
							nesting_mode: "single"
						}
						description:      "Alert configuration. Default: `{ status: { enabled: true }, tls: { enabled: true } }`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					browser: {
						nested_type: {
							attributes: {
								ignore_https_errors: {
									type:             "bool"
									description:      "Whether to ignore HTTPS errors."
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
								inline_script: {
									type:             "string"
									description:      "The inline script."
									description_kind: "markdown"
									required:         true
								}
								playwright_options: {
									type:             "string"
									description:      "Playwright options.. Raw JSON object, use `jsonencode` function to represent JSON"
									description_kind: "markdown"
									optional:         true
								}
								screenshots: {
									type:             "string"
									description:      "Controls the behavior of the screenshots feature."
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
								synthetics_args: {
									type: ["list", "string"]
									description:      "Synthetics agent CLI arguments."
									description_kind: "markdown"
									optional:         true
								}
							}
							nesting_mode: "single"
						}
						description:      "Browser Monitor specific fields"
						description_kind: "markdown"
						optional:         true
					}
					enabled: {
						type:             "bool"
						description:      "Whether the monitor is enabled. Default: `true`"
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					http: {
						nested_type: {
							attributes: {
								check: {
									type:             "string"
									description:      "The check request settings.. Raw JSON object, use `jsonencode` function to represent JSON"
									description_kind: "markdown"
									optional:         true
								}
								ipv4: {
									type:             "bool"
									description:      "Whether to ping using the ipv4 protocol."
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
								ipv6: {
									type:             "bool"
									description:      "Whether to ping using the ipv6 protocol."
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
								max_redirects: {
									type:             "number"
									description:      "The maximum number of redirects to follow. Default: `0`"
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
								mode: {
									type:             "string"
									description:      "The mode of the monitor. Can be \"all\" or \"any\". If you’re using a DNS-load balancer and want to ping every IP address for the specified hostname, you should use all."
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
								password: {
									type:             "string"
									description:      "The password for authenticating with the server. The credentials are passed with the request."
									description_kind: "markdown"
									optional:         true
								}
								proxy_header: {
									type:             "string"
									description:      "Additional headers to send to proxies during CONNECT requests.. Raw JSON object, use `jsonencode` function to represent JSON"
									description_kind: "markdown"
									optional:         true
								}
								proxy_url: {
									type:             "string"
									description:      "The URL of the proxy to use for this monitor."
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
								response: {
									type:             "string"
									description:      "Controls the indexing of the HTTP response body contents to the `http.response.body.contents` field.. Raw JSON object, use `jsonencode` function to represent JSON"
									description_kind: "markdown"
									optional:         true
								}
								ssl_certificate: {
									type:             "string"
									description:      "Certificate."
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
								ssl_certificate_authorities: {
									type: ["list", "string"]
									description:      "The list of root certificates for verifications is required."
									description_kind: "markdown"
									optional:         true
								}
								ssl_key: {
									type:             "string"
									description:      "Certificate key."
									description_kind: "markdown"
									optional:         true
									computed:         true
									sensitive:        true
								}
								ssl_key_passphrase: {
									type:             "string"
									description:      "Key passphrase."
									description_kind: "markdown"
									optional:         true
									computed:         true
									sensitive:        true
								}
								ssl_supported_protocols: {
									type: ["list", "string"]
									description:      "List of allowed SSL/TLS versions."
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
								ssl_verification_mode: {
									type:             "string"
									description:      "Controls the verification of server certificates. "
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
								url: {
									type:             "string"
									description:      "URL to monitor."
									description_kind: "markdown"
									required:         true
								}
								username: {
									type:             "string"
									description:      "The username for authenticating with the server. The credentials are passed with the request."
									description_kind: "markdown"
									optional:         true
								}
							}
							nesting_mode: "single"
						}
						description:      "HTTP Monitor specific fields"
						description_kind: "markdown"
						optional:         true
					}
					icmp: {
						nested_type: {
							attributes: {
								host: {
									type:             "string"
									description:      "Host to ping; it can be an IP address or a hostname."
									description_kind: "markdown"
									required:         true
								}
								wait: {
									type:             "number"
									description:      " Wait time in seconds. Default: `1`"
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
							}
							nesting_mode: "single"
						}
						description:      "ICMP Monitor specific fields"
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description:      "Generated identifier for the monitor"
						description_kind: "markdown"
						computed:         true
					}
					locations: {
						type: ["list", "string"]
						description:      "Where to deploy the monitor. Monitors can be deployed in multiple locations so that you can detect differences in availability and response times across those locations."
						description_kind: "markdown"
						optional:         true
					}
					name: {
						type:             "string"
						description:      "The monitor’s name."
						description_kind: "markdown"
						required:         true
					}
					params: {
						type:             "string"
						description:      "Monitor parameters. Raw JSON object, use `jsonencode` function to represent JSON"
						description_kind: "markdown"
						optional:         true
					}
					private_locations: {
						type: ["list", "string"]
						description:      "These Private Locations refer to locations hosted and managed by you, whereas locations are hosted by Elastic. You can specify a Private Location using the location’s name."
						description_kind: "markdown"
						optional:         true
					}
					retest_on_failure: {
						type:             "bool"
						description:      "Enable or disable retesting when a monitor fails. By default, monitors are automatically retested if the monitor goes from \"up\" to \"down\". If the result of the retest is also \"down\", an error will be created, and if configured, an alert sent. Then the monitor will resume running according to the defined schedule. Using retest_on_failure can reduce noise related to transient problems. Default: `true`."
						description_kind: "markdown"
						optional:         true
					}
					schedule: {
						type:             "number"
						description:      "The monitor’s schedule in minutes. Supported values are 1, 3, 5, 10, 15, 30, 60, 120 and 240."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					service_name: {
						type:             "string"
						description:      "The APM service name."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					space_id: {
						type:             "string"
						description:      "The namespace field should be lowercase and not contain spaces. The namespace must not include any of the following characters: *, \\, /, ?, \", <, >, |, whitespace, ,, #, :, or -. Default: `default`"
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					tags: {
						type: ["list", "string"]
						description:      "An array of tags."
						description_kind: "markdown"
						optional:         true
					}
					tcp: {
						nested_type: {
							attributes: {
								check_receive: {
									type:             "string"
									description:      "The expected answer. "
									description_kind: "markdown"
									optional:         true
								}
								check_send: {
									type:             "string"
									description:      "An optional payload string to send to the remote host."
									description_kind: "markdown"
									optional:         true
								}
								host: {
									type:             "string"
									description:      "The host to monitor; it can be an IP address or a hostname. The host can include the port using a colon (e.g., \"example.com:9200\")."
									description_kind: "markdown"
									required:         true
								}
								proxy_url: {
									type:             "string"
									description:      "The URL of the SOCKS5 proxy to use when connecting to the server. The value must be a URL with a scheme of `socks5://`. If the SOCKS5 proxy server requires client authentication, then a username and password can be embedded in the URL. When using a proxy, hostnames are resolved on the proxy server instead of on the client. You can change this behavior by setting the `proxy_use_local_resolver` option."
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
								proxy_use_local_resolver: {
									type:             "bool"
									description:      " A Boolean value that determines whether hostnames are resolved locally instead of being resolved on the proxy server. The default value is false, which means that name resolution occurs on the proxy server."
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
								ssl_certificate: {
									type:             "string"
									description:      "Certificate."
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
								ssl_certificate_authorities: {
									type: ["list", "string"]
									description:      "The list of root certificates for verifications is required."
									description_kind: "markdown"
									optional:         true
								}
								ssl_key: {
									type:             "string"
									description:      "Certificate key."
									description_kind: "markdown"
									optional:         true
									computed:         true
									sensitive:        true
								}
								ssl_key_passphrase: {
									type:             "string"
									description:      "Key passphrase."
									description_kind: "markdown"
									optional:         true
									computed:         true
									sensitive:        true
								}
								ssl_supported_protocols: {
									type: ["list", "string"]
									description:      "List of allowed SSL/TLS versions."
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
								ssl_verification_mode: {
									type:             "string"
									description:      "Controls the verification of server certificates. "
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
							}
							nesting_mode: "single"
						}
						description:      "TCP Monitor specific fields"
						description_kind: "markdown"
						optional:         true
					}
					timeout: {
						type:             "number"
						description:      "The monitor timeout in seconds, monitor will fail if it doesn’t complete within this time. Default: `16`"
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
				}
				description:      "Synthetics monitor config, see https://www.elastic.co/guide/en/kibana/current/add-monitor-api.html for more details. The monitor must have one of the following: http, tcp, icmp or browser."
				description_kind: "markdown"
			}
		}
		elasticstack_kibana_synthetics_parameter: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "A description of the parameter."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					id: {
						type:             "string"
						description:      "Generated id for the parameter."
						description_kind: "markdown"
						computed:         true
					}
					key: {
						type:             "string"
						description:      "The key of the parameter."
						description_kind: "markdown"
						required:         true
					}
					share_across_spaces: {
						type:             "bool"
						description:      "Whether the parameter should be shared across spaces."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					tags: {
						type: ["list", "string"]
						description:      "An array of tags to categorize the parameter."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					value: {
						type:             "string"
						description:      "The value associated with the parameter."
						description_kind: "markdown"
						required:         true
						sensitive:        true
					}
				}
				description:      "Synthetics parameter config, see https://www.elastic.co/docs/api/doc/kibana/group/endpoint-synthetics for more details"
				description_kind: "markdown"
			}
		}
		elasticstack_kibana_synthetics_private_location: {
			version: 0
			block: {
				attributes: {
					agent_policy_id: {
						type:             "string"
						description:      "The ID of the agent policy associated with the private location. To create a private location for synthetics monitor you need to create an agent policy in fleet and use its agentPolicyId"
						description_kind: "markdown"
						required:         true
					}
					geo: {
						nested_type: {
							attributes: {
								lat: {
									type:             "number"
									description:      "The latitude of the location."
									description_kind: "markdown"
									required:         true
								}
								lon: {
									type:             "number"
									description:      "The longitude of the location."
									description_kind: "markdown"
									required:         true
								}
							}
							nesting_mode: "single"
						}
						description:      "Geographic coordinates (WGS84) for the location"
						description_kind: "plain"
						optional:         true
					}
					id: {
						type:             "string"
						description:      "Generated id for the private location. For monitor setup please use private location label."
						description_kind: "markdown"
						computed:         true
					}
					label: {
						type:             "string"
						description:      "A label for the private location, used as unique identifier"
						description_kind: "markdown"
						required:         true
					}
					tags: {
						type: ["list", "string"]
						description:      "An array of tags to categorize the private location."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Synthetics private location config, see https://www.elastic.co/guide/en/kibana/current/create-private-location-api.html for more details"
				description_kind: "markdown"
			}
		}
	}
	data_source_schemas: {
		elasticstack_elasticsearch_enrich_policy: {
			version: 0
			block: {
				attributes: {
					enrich_fields: {
						type: ["set", "string"]
						description:      "Fields to add to matching incoming documents. These fields must be present in the source indices."
						description_kind: "markdown"
						computed:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					indices: {
						type: ["set", "string"]
						description:      "Array of one or more source indices used to create the enrich index."
						description_kind: "markdown"
						computed:         true
					}
					match_field: {
						type:             "string"
						description:      "Field in source indices used to match incoming documents."
						description_kind: "markdown"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The name of the policy."
						description_kind: "markdown"
						required:         true
					}
					policy_type: {
						type:             "string"
						description:      "The type of enrich policy, can be one of geo_match, match, range."
						description_kind: "markdown"
						computed:         true
					}
					query: {
						type:             "string"
						description:      "Query used to filter documents in the enrich index. The policy only uses documents matching this query to enrich incoming documents. Defaults to a match_all query."
						description_kind: "markdown"
						computed:         true
					}
				}
				description:      "Returns information about an enrich policy. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/get-enrich-policy-api.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_index_template: {
			version: 0
			block: {
				attributes: {
					composed_of: {
						type: ["list", "string"]
						description:      "An ordered list of component template names."
						description_kind: "markdown"
						computed:         true
					}
					data_stream: {
						type: ["list", ["object", {
							allow_custom_routing: "bool"
							hidden:               "bool"
						}]]
						description:      "If this object is included, the template is used to create data streams and their backing indices. Supports an empty object."
						description_kind: "markdown"
						computed:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					index_patterns: {
						type: ["set", "string"]
						description:      "Array of wildcard (*) expressions used to match the names of data streams and indices during creation."
						description_kind: "markdown"
						computed:         true
					}
					metadata: {
						type:             "string"
						description:      "Optional user metadata about the index template."
						description_kind: "markdown"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The name of the index template."
						description_kind: "markdown"
						required:         true
					}
					priority: {
						type:             "number"
						description:      "Priority to determine index template precedence when a new data stream or index is created."
						description_kind: "markdown"
						computed:         true
					}
					template: {
						type: ["list", ["object", {
							alias: ["set", ["object", {
								filter:         "string"
								index_routing:  "string"
								is_hidden:      "bool"
								is_write_index: "bool"
								name:           "string"
								routing:        "string"
								search_routing: "string"
							}]]
							lifecycle: ["set", ["object", {
								data_retention: "string"
							}]]
							mappings: "string"
							settings: "string"
						}]]
						description:      "Template to be applied. It may optionally include an aliases, mappings, lifecycle, or settings configuration."
						description_kind: "markdown"
						computed:         true
					}
					version: {
						type:             "number"
						description:      "Version number used to manage index templates externally."
						description_kind: "markdown"
						computed:         true
					}
				}
				block_types: elasticsearch_connection: {
					nesting_mode: "list"
					block: {
						attributes: {
							api_key: {
								type:             "string"
								description:      "API Key to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							bearer_token: {
								type:             "string"
								description:      "Bearer Token to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							ca_data: {
								type:             "string"
								description:      "PEM-encoded custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							ca_file: {
								type:             "string"
								description:      "Path to a custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							cert_data: {
								type:             "string"
								description:      "PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							cert_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							endpoints: {
								type: ["list", "string"]
								description:      "A list of endpoints where the terraform provider will point to, this must include the http(s) schema and port number."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							es_client_authentication: {
								type:             "string"
								description:      "ES Client Authentication field to be used with the JWT token"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							headers: {
								type: ["map", "string"]
								description:      "A list of headers to be sent with each request to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							insecure: {
								type:             "bool"
								description:      "Disable TLS certificate validation"
								description_kind: "markdown"
								optional:         true
							}
							key_data: {
								type:             "string"
								description:      "PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							key_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
							}
							password: {
								type:             "string"
								description:      "Password to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							username: {
								type:             "string"
								description:      "Username to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
							}
						}
						description:      "Elasticsearch connection configuration block. This property will be removed in a future provider version. Configure the Elasticsearch connection via the provider configuration instead."
						description_kind: "markdown"
						deprecated:       true
					}
					max_items: 1
				}
				description:      "Retrieves index template definition. See, https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-get-template.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_indices: {
			version: 0
			block: {
				attributes: {
					id: {
						type:             "string"
						description:      "Generated ID for the indices."
						description_kind: "plain"
						computed:         true
					}
					indices: {
						nested_type: {
							attributes: {
								alias: {
									nested_type: {
										attributes: {
											filter: {
												type:             "string"
												description:      "Query used to limit documents the alias can access."
												description_kind: "plain"
												optional:         true
											}
											index_routing: {
												type:             "string"
												description:      "Value used to route indexing operations to a specific shard. If specified, this overwrites the `routing` value for indexing operations."
												description_kind: "plain"
												optional:         true
												computed:         true
											}
											is_hidden: {
												type:             "bool"
												description:      "If true, the alias is hidden."
												description_kind: "plain"
												optional:         true
												computed:         true
											}
											is_write_index: {
												type:             "bool"
												description:      "If true, the index is the write index for the alias."
												description_kind: "plain"
												optional:         true
												computed:         true
											}
											name: {
												type:             "string"
												description:      "Index alias name."
												description_kind: "plain"
												required:         true
											}
											routing: {
												type:             "string"
												description:      "Value used to route indexing and search operations to a specific shard."
												description_kind: "plain"
												optional:         true
												computed:         true
											}
											search_routing: {
												type:             "string"
												description:      "Value used to route search operations to a specific shard. If specified, this overwrites the routing value for search operations."
												description_kind: "plain"
												optional:         true
												computed:         true
											}
										}
										nesting_mode: "set"
									}
									description:      "Aliases for the index."
									description_kind: "plain"
									optional:         true
								}
								analysis_analyzer: {
									type:             "string"
									description:      "A JSON string describing the analyzers applied to the index."
									description_kind: "plain"
									optional:         true
								}
								analysis_char_filter: {
									type:             "string"
									description:      "A JSON string describing the char_filters applied to the index."
									description_kind: "plain"
									optional:         true
								}
								analysis_filter: {
									type:             "string"
									description:      "A JSON string describing the filters applied to the index."
									description_kind: "plain"
									optional:         true
								}
								analysis_normalizer: {
									type:             "string"
									description:      "A JSON string describing the normalizers applied to the index."
									description_kind: "plain"
									optional:         true
								}
								analysis_tokenizer: {
									type:             "string"
									description:      "A JSON string describing the tokenizers applied to the index."
									description_kind: "plain"
									optional:         true
								}
								analyze_max_token_count: {
									type:             "number"
									description:      "The maximum number of tokens that can be produced using _analyze API."
									description_kind: "plain"
									optional:         true
								}
								auto_expand_replicas: {
									type:             "string"
									description:      "Set the number of replicas to the node count in the cluster. Set to a dash delimited lower and upper bound (e.g. 0-5) or use all for the upper bound (e.g. 0-all)"
									description_kind: "plain"
									optional:         true
								}
								blocks_metadata: {
									type:             "bool"
									description:      "Set to `true` to disable index metadata reads and writes."
									description_kind: "plain"
									optional:         true
								}
								blocks_read: {
									type:             "bool"
									description:      "Set to `true` to disable read operations against the index."
									description_kind: "plain"
									optional:         true
								}
								blocks_read_only: {
									type:             "bool"
									description:      "Set to `true` to make the index and index metadata read only, `false` to allow writes and metadata changes."
									description_kind: "plain"
									optional:         true
								}
								blocks_read_only_allow_delete: {
									type:             "bool"
									description:      "Identical to `index.blocks.read_only` but allows deleting the index to free up resources."
									description_kind: "plain"
									optional:         true
								}
								blocks_write: {
									type:             "bool"
									description:      "Set to `true` to disable data write operations against the index. This setting does not affect metadata."
									description_kind: "plain"
									optional:         true
								}
								codec: {
									type:             "string"
									description:      "The `default` value compresses stored data with LZ4 compression, but this can be set to `best_compression` which uses DEFLATE for a higher compression ratio. This can be set only on creation."
									description_kind: "plain"
									optional:         true
								}
								default_pipeline: {
									type:             "string"
									description:      "The default ingest node pipeline for this index. Index requests will fail if the default pipeline is set and the pipeline does not exist."
									description_kind: "plain"
									optional:         true
								}
								deletion_protection: {
									type:             "bool"
									description:      "Whether to allow Terraform to destroy the index. Unless this field is set to false in Terraform state, a terraform destroy or terraform apply command that deletes the instance will fail."
									description_kind: "plain"
									optional:         true
									computed:         true
								}
								final_pipeline: {
									type:             "string"
									description:      "Final ingest pipeline for the index. Indexing requests will fail if the final pipeline is set and the pipeline does not exist. The final pipeline always runs after the request pipeline (if specified) and the default pipeline (if it exists). The special pipeline name _none indicates no ingest pipeline will run."
									description_kind: "plain"
									optional:         true
								}
								gc_deletes: {
									type:             "string"
									description:      "The length of time that a deleted document's version number remains available for further versioned operations."
									description_kind: "plain"
									optional:         true
								}
								highlight_max_analyzed_offset: {
									type:             "number"
									description:      "The maximum number of characters that will be analyzed for a highlight request."
									description_kind: "plain"
									optional:         true
								}
								id: {
									type:             "string"
									description:      "Internal identifier of the resource."
									description_kind: "plain"
									computed:         true
								}
								indexing_slowlog_level: {
									type:             "string"
									description:      "Set which logging level to use for the search slow log, can be: `warn`, `info`, `debug`, `trace`"
									description_kind: "plain"
									optional:         true
								}
								indexing_slowlog_source: {
									type:             "string"
									description:      "Set the number of characters of the `_source` to include in the slowlog lines, `false` or `0` will skip logging the source entirely and setting it to `true` will log the entire source regardless of size. The original `_source` is reformatted by default to make sure that it fits on a single log line."
									description_kind: "plain"
									optional:         true
								}
								indexing_slowlog_threshold_index_debug: {
									type:             "string"
									description:      "Set the cutoff for shard level slow search logging of slow searches for indexing queries, in time units, e.g. `2s`"
									description_kind: "plain"
									optional:         true
								}
								indexing_slowlog_threshold_index_info: {
									type:             "string"
									description:      "Set the cutoff for shard level slow search logging of slow searches for indexing queries, in time units, e.g. `5s`"
									description_kind: "plain"
									optional:         true
								}
								indexing_slowlog_threshold_index_trace: {
									type:             "string"
									description:      "Set the cutoff for shard level slow search logging of slow searches for indexing queries, in time units, e.g. `500ms`"
									description_kind: "plain"
									optional:         true
								}
								indexing_slowlog_threshold_index_warn: {
									type:             "string"
									description:      "Set the cutoff for shard level slow search logging of slow searches for indexing queries, in time units, e.g. `10s`"
									description_kind: "plain"
									optional:         true
								}
								load_fixed_bitset_filters_eagerly: {
									type:             "bool"
									description:      "Indicates whether cached filters are pre-loaded for nested queries. This can be set only on creation."
									description_kind: "plain"
									optional:         true
								}
								mapping_coerce: {
									type:             "bool"
									description:      "Set index level coercion setting that is applied to all mapping types."
									description_kind: "plain"
									optional:         true
								}
								mappings: {
									type: "string"
									description: """
												Mapping for fields in the index.
												\t\t\t\t\t\t\tIf specified, this mapping can include: field names, [field data types](https://www.elastic.co/guide/en/elasticsearch/reference/current/mapping-types.html), [mapping parameters](https://www.elastic.co/guide/en/elasticsearch/reference/current/mapping-params.html).
												\t\t\t\t\t\t\t**NOTE:**
												\t\t\t\t\t\t\t- Changing datatypes in the existing _mappings_ will force index to be re-created.
												\t\t\t\t\t\t\t- Removing field will be ignored by default same as elasticsearch. You need to recreate the index to remove field completely.
												\t\t\t\t\t\t\t
												"""
									description_kind: "plain"
									optional:         true
									computed:         true
								}
								master_timeout: {
									type:             "string"
									description:      "Period to wait for a connection to the master node. If no response is received before the timeout expires, the request fails and returns an error. Defaults to `30s`. This value is ignored when running against Serverless projects."
									description_kind: "plain"
									optional:         true
									computed:         true
								}
								max_docvalue_fields_search: {
									type:             "number"
									description:      "The maximum number of `docvalue_fields` that are allowed in a query."
									description_kind: "plain"
									optional:         true
								}
								max_inner_result_window: {
									type:             "number"
									description:      "The maximum value of `from + size` for inner hits definition and top hits aggregations to this index."
									description_kind: "plain"
									optional:         true
								}
								max_ngram_diff: {
									type:             "number"
									description:      "The maximum allowed difference between min_gram and max_gram for NGramTokenizer and NGramTokenFilter."
									description_kind: "plain"
									optional:         true
								}
								max_refresh_listeners: {
									type:             "number"
									description:      "Maximum number of refresh listeners available on each shard of the index."
									description_kind: "plain"
									optional:         true
								}
								max_regex_length: {
									type:             "number"
									description:      "The maximum length of regex that can be used in Regexp Query."
									description_kind: "plain"
									optional:         true
								}
								max_rescore_window: {
									type:             "number"
									description:      "The maximum value of `window_size` for `rescore` requests in searches of this index."
									description_kind: "plain"
									optional:         true
								}
								max_result_window: {
									type:             "number"
									description:      "The maximum value of `from + size` for searches to this index."
									description_kind: "plain"
									optional:         true
								}
								max_script_fields: {
									type:             "number"
									description:      "The maximum number of `script_fields` that are allowed in a query."
									description_kind: "plain"
									optional:         true
								}
								max_shingle_diff: {
									type:             "number"
									description:      "The maximum allowed difference between max_shingle_size and min_shingle_size for ShingleTokenFilter."
									description_kind: "plain"
									optional:         true
								}
								max_terms_count: {
									type:             "number"
									description:      "The maximum number of terms that can be used in Terms Query."
									description_kind: "plain"
									optional:         true
								}
								name: {
									type:             "string"
									description:      "Name of the index."
									description_kind: "plain"
									required:         true
								}
								number_of_replicas: {
									type:             "number"
									description:      "Number of shard replicas."
									description_kind: "plain"
									optional:         true
									computed:         true
								}
								number_of_routing_shards: {
									type:             "number"
									description:      "Value used with number_of_shards to route documents to a primary shard. This can be set only on creation."
									description_kind: "plain"
									optional:         true
								}
								number_of_shards: {
									type:             "number"
									description:      "Number of shards for the index. This can be set only on creation."
									description_kind: "plain"
									optional:         true
								}
								query_default_field: {
									type: ["set", "string"]
									description:      "Wildcard (*) patterns matching one or more fields. Defaults to '*', which matches all fields eligible for term-level queries, excluding metadata fields."
									description_kind: "plain"
									optional:         true
								}
								refresh_interval: {
									type:             "string"
									description:      "How often to perform a refresh operation, which makes recent changes to the index visible to search. Can be set to `-1` to disable refresh."
									description_kind: "plain"
									optional:         true
								}
								routing_allocation_enable: {
									type:             "string"
									description:      "Controls shard allocation for this index. It can be set to: `all` , `primaries` , `new_primaries` , `none`."
									description_kind: "plain"
									optional:         true
								}
								routing_partition_size: {
									type:             "number"
									description:      "The number of shards a custom routing value can go to. This can be set only on creation."
									description_kind: "plain"
									optional:         true
								}
								routing_rebalance_enable: {
									type:             "string"
									description:      "Enables shard rebalancing for this index. It can be set to: `all`, `primaries` , `replicas` , `none`."
									description_kind: "plain"
									optional:         true
								}
								search_idle_after: {
									type:             "string"
									description:      "How long a shard can not receive a search or get request until it’s considered search idle."
									description_kind: "plain"
									optional:         true
								}
								search_slowlog_level: {
									type:             "string"
									description:      "Set which logging level to use for the search slow log, can be: `warn`, `info`, `debug`, `trace`"
									description_kind: "plain"
									optional:         true
								}
								search_slowlog_threshold_fetch_debug: {
									type:             "string"
									description:      "Set the cutoff for shard level slow search logging of slow searches in the fetch phase, in time units, e.g. `2s`"
									description_kind: "plain"
									optional:         true
								}
								search_slowlog_threshold_fetch_info: {
									type:             "string"
									description:      "Set the cutoff for shard level slow search logging of slow searches in the fetch phase, in time units, e.g. `5s`"
									description_kind: "plain"
									optional:         true
								}
								search_slowlog_threshold_fetch_trace: {
									type:             "string"
									description:      "Set the cutoff for shard level slow search logging of slow searches in the fetch phase, in time units, e.g. `500ms`"
									description_kind: "plain"
									optional:         true
								}
								search_slowlog_threshold_fetch_warn: {
									type:             "string"
									description:      "Set the cutoff for shard level slow search logging of slow searches in the fetch phase, in time units, e.g. `10s`"
									description_kind: "plain"
									optional:         true
								}
								search_slowlog_threshold_query_debug: {
									type:             "string"
									description:      "Set the cutoff for shard level slow search logging of slow searches in the query phase, in time units, e.g. `2s`"
									description_kind: "plain"
									optional:         true
								}
								search_slowlog_threshold_query_info: {
									type:             "string"
									description:      "Set the cutoff for shard level slow search logging of slow searches in the query phase, in time units, e.g. `5s`"
									description_kind: "plain"
									optional:         true
								}
								search_slowlog_threshold_query_trace: {
									type:             "string"
									description:      "Set the cutoff for shard level slow search logging of slow searches in the query phase, in time units, e.g. `500ms`"
									description_kind: "plain"
									optional:         true
								}
								search_slowlog_threshold_query_warn: {
									type:             "string"
									description:      "Set the cutoff for shard level slow search logging of slow searches in the query phase, in time units, e.g. `10s`"
									description_kind: "plain"
									optional:         true
								}
								settings_raw: {
									type:             "string"
									description:      "All raw settings fetched from the cluster."
									description_kind: "plain"
									computed:         true
								}
								shard_check_on_startup: {
									type:             "string"
									description:      "Whether or not shards should be checked for corruption before opening. When corruption is detected, it will prevent the shard from being opened. Accepts `false`, `true`, `checksum`."
									description_kind: "plain"
									optional:         true
								}
								sort_field: {
									type: ["set", "string"]
									description:      "The field to sort shards in this index by."
									description_kind: "plain"
									optional:         true
								}
								sort_order: {
									type: ["list", "string"]
									description:      "The direction to sort shards in. Accepts `asc`, `desc`."
									description_kind: "plain"
									optional:         true
								}
								timeout: {
									type:             "string"
									description:      "Period to wait for a response. If no response is received before the timeout expires, the request fails and returns an error. Defaults to `30s`."
									description_kind: "plain"
									optional:         true
									computed:         true
								}
								unassigned_node_left_delayed_timeout: {
									type:             "string"
									description:      "Time to delay the allocation of replica shards which become unassigned because a node has left, in time units, e.g. `10s`"
									description_kind: "plain"
									optional:         true
								}
								wait_for_active_shards: {
									type:             "string"
									description:      "The number of shard copies that must be active before proceeding with the operation. Set to `all` or any positive integer up to the total number of shards in the index (number_of_replicas+1). Default: `1`, the primary shard. This value is ignored when running against Serverless projects."
									description_kind: "plain"
									optional:         true
									computed:         true
								}
							}
							nesting_mode: "list"
						}
						description:      "The list of indices."
						description_kind: "plain"
						computed:         true
					}
					target: {
						type:             "string"
						description:      "Comma-separated list of data streams, indices, and aliases used to limit the request. Supports wildcards (*). To target all data streams and indices, omit this attribute or use * or _all. "
						description_kind: "plain"
						optional:         true
					}
				}
				description:      "Manages Elasticsearch indices. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-get-index.html"
				description_kind: "plain"
			}
		}
		elasticstack_elasticsearch_info: {
			version: 0
			block: {
				attributes: {
					cluster_name: {
						type:             "string"
						description:      "Name of the cluster, based on the Cluster name setting setting."
						description_kind: "markdown"
						computed:         true
					}
					cluster_uuid: {
						type:             "string"
						description:      "Unique identifier for the cluster."
						description_kind: "markdown"
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "Name of the node."
						description_kind: "markdown"
						computed:         true
					}
					tagline: {
						type:             "string"
						description:      "Elasticsearh tag line."
						description_kind: "markdown"
						computed:         true
					}
					version: {
						type: ["list", ["object", {
							build_date:                          "string"
							build_flavor:                        "string"
							build_hash:                          "string"
							build_snapshot:                      "bool"
							build_type:                          "string"
							lucene_version:                      "string"
							minimum_index_compatibility_version: "string"
							minimum_wire_compatibility_version:  "string"
							number:                              "string"
						}]]
						description:      "Contains statistics about the number of nodes selected by the request's node filters."
						description_kind: "markdown"
						computed:         true
					}
				}
				description:      "Gets information about the Elastic cluster."
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_append: {
			version: 0
			block: {
				attributes: {
					allow_duplicates: {
						type:             "bool"
						description:      "If `false`, the processor does not append values already present in the field."
						description_kind: "markdown"
						optional:         true
					}
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "The field to be appended to."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					media_type: {
						type:             "string"
						description:      "The media type for encoding value. Applies only when value is a template snippet. Must be one of `application/json`, `text/plain`, or `application/x-www-form-urlencoded`. Supported only from Elasticsearch version **7.15**."
						description_kind: "markdown"
						optional:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					value: {
						type: ["list", "string"]
						description:      "The value to be appended. "
						description_kind: "markdown"
						required:         true
					}
				}
				description:      "Appends one or more values to an existing array if the field already exists and it is an array. Converts a scalar to an array and appends one or more values to it if the field exists and it is a scalar. Creates an array containing the provided values if the field doesn’t exist. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/append-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_bytes: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "The field to convert"
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					ignore_missing: {
						type:             "bool"
						description:      "If `true` and `field` does not exist or is `null`, the processor quietly exits without modifying the document."
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					target_field: {
						type:             "string"
						description:      "The field to assign the converted value to, by default `field` is updated in-place"
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Converts a human readable byte value (e.g. 1kb) to its value in bytes (e.g. 1024). See: https://www.elastic.co/guide/en/elasticsearch/reference/current/bytes-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_circle: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					error_distance: {
						type:             "number"
						description:      "The difference between the resulting inscribed distance from center to side and the circle’s radius (measured in meters for `geo_shape`, unit-less for `shape`)"
						description_kind: "markdown"
						required:         true
					}
					field: {
						type:             "string"
						description:      "The string-valued field to trim whitespace from."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					ignore_missing: {
						type:             "bool"
						description:      "If `true` and `field` does not exist or is `null`, the processor quietly exits without modifying the document."
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					shape_type: {
						type:             "string"
						description:      "Which field mapping type is to be used when processing the circle."
						description_kind: "markdown"
						required:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					target_field: {
						type:             "string"
						description:      "The field to assign the converted value to, by default `field` is updated in-place"
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Converts circle definitions of shapes to regular polygons which approximate them. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/ingest-circle-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_community_id: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					destination_ip: {
						type:             "string"
						description:      "Field containing the destination IP address."
						description_kind: "markdown"
						optional:         true
					}
					destination_port: {
						type:             "number"
						description:      "Field containing the destination port."
						description_kind: "markdown"
						optional:         true
					}
					iana_number: {
						type:             "number"
						description:      "Field containing the IANA number."
						description_kind: "markdown"
						optional:         true
					}
					icmp_code: {
						type:             "number"
						description:      "Field containing the ICMP code."
						description_kind: "markdown"
						optional:         true
					}
					icmp_type: {
						type:             "number"
						description:      "Field containing the ICMP type."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					ignore_missing: {
						type:             "bool"
						description:      "If `true` and `field` does not exist or is `null`, the processor quietly exits without modifying the document."
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					seed: {
						type:             "number"
						description:      "Seed for the community ID hash. Must be between 0 and 65535 (inclusive). The seed can prevent hash collisions between network domains, such as a staging and production network that use the same addressing scheme."
						description_kind: "markdown"
						optional:         true
					}
					source_ip: {
						type:             "string"
						description:      "Field containing the source IP address."
						description_kind: "markdown"
						optional:         true
					}
					source_port: {
						type:             "number"
						description:      "Field containing the source port."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					target_field: {
						type:             "string"
						description:      "Output field for the community ID."
						description_kind: "markdown"
						optional:         true
					}
					transport: {
						type:             "string"
						description:      "Field containing the transport protocol. Used only when the `iana_number` field is not present."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Computes the Community ID for network flow data as defined in the Community ID Specification. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/community-id-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_convert: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "The field whose value is to be converted."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					ignore_missing: {
						type:             "bool"
						description:      "If `true` and `field` does not exist or is `null`, the processor quietly exits without modifying the document."
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					target_field: {
						type:             "string"
						description:      "The field to assign the converted value to."
						description_kind: "markdown"
						optional:         true
					}
					type: {
						type:             "string"
						description:      "The type to convert the existing value to"
						description_kind: "markdown"
						required:         true
					}
				}
				description:      "Converts a field in the currently ingested document to a different type, such as converting a string to an integer. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/convert-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_csv: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					empty_value: {
						type:             "string"
						description:      "Value used to fill empty fields, empty fields will be skipped if this is not provided."
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "The field to extract data from."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					ignore_missing: {
						type:             "bool"
						description:      "If `true` and `field` does not exist or is `null`, the processor quietly exits without modifying the document."
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					quote: {
						type:             "string"
						description:      "Quote used in CSV, has to be single character string"
						description_kind: "markdown"
						optional:         true
					}
					separator: {
						type:             "string"
						description:      "Separator used in CSV, has to be single character string."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					target_fields: {
						type: ["list", "string"]
						description:      "The array of fields to assign extracted values to."
						description_kind: "markdown"
						required:         true
					}
					trim: {
						type:             "bool"
						description:      "Trim whitespaces in unquoted fields."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Extracts fields from CSV line out of a single text field within a document. Any empty field in CSV will be skipped. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/csv-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_date: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "The field to get the date from."
						description_kind: "markdown"
						required:         true
					}
					formats: {
						type: ["list", "string"]
						description:      "An array of the expected date formats."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					locale: {
						type:             "string"
						description:      "The locale to use when parsing the date, relevant when parsing month names or week days."
						description_kind: "markdown"
						optional:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					output_format: {
						type:             "string"
						description:      "The format to use when writing the date to `target_field`."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					target_field: {
						type:             "string"
						description:      "The field that will hold the parsed date."
						description_kind: "markdown"
						optional:         true
					}
					timezone: {
						type:             "string"
						description:      "The timezone to use when parsing the date."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Parses dates from fields, and then uses the date or timestamp as the timestamp for the document. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/date-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_date_index_name: {
			version: 0
			block: {
				attributes: {
					date_formats: {
						type: ["list", "string"]
						description:      "An array of the expected date formats for parsing dates / timestamps in the document being preprocessed."
						description_kind: "markdown"
						optional:         true
					}
					date_rounding: {
						type:             "string"
						description:      "How to round the date when formatting the date into the index name."
						description_kind: "markdown"
						required:         true
					}
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "The field to get the date or timestamp from."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					index_name_format: {
						type:             "string"
						description:      "The format to be used when printing the parsed date into the index name."
						description_kind: "markdown"
						optional:         true
					}
					index_name_prefix: {
						type:             "string"
						description:      "A prefix of the index name to be prepended before the printed date."
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					locale: {
						type:             "string"
						description:      "The locale to use when parsing the date from the document being preprocessed, relevant when parsing month names or week days."
						description_kind: "markdown"
						optional:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					timezone: {
						type:             "string"
						description:      "The timezone to use when parsing the date and when date math index supports resolves expressions into concrete index names."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "The purpose of this processor is to point documents to the right time based index based on a date or timestamp field in a document by using the date math index name support. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/date-index-name-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_dissect: {
			version: 0
			block: {
				attributes: {
					append_separator: {
						type:             "string"
						description:      "The character(s) that separate the appended fields."
						description_kind: "markdown"
						optional:         true
					}
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "The field to dissect."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					ignore_missing: {
						type:             "bool"
						description:      "If `true` and `field` does not exist or is `null`, the processor quietly exits without modifying the document."
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					pattern: {
						type:             "string"
						description:      "The pattern to apply to the field."
						description_kind: "markdown"
						required:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Extracts structured fields out of a single text field within a document. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/dissect-processor.html#dissect-processor"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_dot_expander: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "The field to expand into an object field. If set to *, all top-level fields will be expanded."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					override: {
						type:             "bool"
						description:      "Controls the behavior when there is already an existing nested object that conflicts with the expanded field."
						description_kind: "markdown"
						optional:         true
					}
					path: {
						type:             "string"
						description:      "The field that contains the field to expand. "
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Expands a field with dots into an object field. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/dot-expand-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_drop: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Drops the document without raising any errors. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/drop-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_enrich: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "The field in the input document that matches the policies match_field used to retrieve the enrichment data."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					ignore_missing: {
						type:             "bool"
						description:      "If `true` and `field` does not exist or is `null`, the processor quietly exits without modifying the document."
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					max_matches: {
						type:             "number"
						description:      "The maximum number of matched documents to include under the configured target field. "
						description_kind: "markdown"
						optional:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					override: {
						type:             "bool"
						description:      "If processor will update fields with pre-existing non-null-valued field. "
						description_kind: "markdown"
						optional:         true
					}
					policy_name: {
						type:             "string"
						description:      "The name of the enrich policy to use."
						description_kind: "markdown"
						required:         true
					}
					shape_relation: {
						type:             "string"
						description:      "A spatial relation operator used to match the geoshape of incoming documents to documents in the enrich index."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					target_field: {
						type:             "string"
						description:      "Field added to incoming documents to contain enrich data."
						description_kind: "markdown"
						required:         true
					}
				}
				description:      "The enrich processor can enrich documents with data from another index. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/enrich-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_fail: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					message: {
						type:             "string"
						description:      "The error message thrown by the processor."
						description_kind: "markdown"
						required:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Raises an exception. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/fail-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_fingerprint: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					fields: {
						type: ["list", "string"]
						description:      "Array of fields to include in the fingerprint."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					ignore_missing: {
						type:             "bool"
						description:      "If `true`, the processor ignores any missing `fields`. If all fields are missing, the processor silently exits without modifying the document."
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					method: {
						type:             "string"
						description:      "The hash method used to compute the fingerprint."
						description_kind: "markdown"
						optional:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					salt: {
						type:             "string"
						description:      "Salt value for the hash function."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					target_field: {
						type:             "string"
						description:      "Output field for the fingerprint."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Computes a hash of the document’s content. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/fingerprint-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_foreach: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "Field containing array or object values."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					ignore_missing: {
						type:             "bool"
						description:      "If `true`, the processor silently exits without changing the document if the `field` is `null` or missing."
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					processor: {
						type:             "string"
						description:      "Ingest processor to run on each element."
						description_kind: "markdown"
						required:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Runs an ingest processor on each element of an array or object. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/foreach-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_geoip: {
			version: 0
			block: {
				attributes: {
					database_file: {
						type:             "string"
						description:      "The database filename referring to a database the module ships with (GeoLite2-City.mmdb, GeoLite2-Country.mmdb, or GeoLite2-ASN.mmdb) or a custom database in the `ingest-geoip` config directory."
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "The field to get the ip address from for the geographical lookup."
						description_kind: "markdown"
						required:         true
					}
					first_only: {
						type:             "bool"
						description:      "If `true` only first found geoip data will be returned, even if field contains array."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					ignore_missing: {
						type:             "bool"
						description:      "If `true` and `field` does not exist, the processor quietly exits without modifying the document."
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					properties: {
						type: ["set", "string"]
						description:      "Controls what properties are added to the `target_field` based on the geoip lookup."
						description_kind: "markdown"
						optional:         true
					}
					target_field: {
						type:             "string"
						description:      "The field that will hold the geographical information looked up from the MaxMind database."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "The geoip processor adds information about the geographical location of an IPv4 or IPv6 address. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/geoip-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_grok: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					ecs_compatibility: {
						type:             "string"
						description:      "Must be disabled or v1. If v1, the processor uses patterns with Elastic Common Schema (ECS) field names. **NOTE:** Supported only starting from version of Elasticsearch **7.16.x**."
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "The field to use for grok expression parsing"
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					ignore_missing: {
						type:             "bool"
						description:      "If `true` and `field` does not exist or is `null`, the processor quietly exits without modifying the document"
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					pattern_definitions: {
						type: ["map", "string"]
						description:      "A map of pattern-name and pattern tuples defining custom patterns to be used by the current processor. Patterns matching existing names will override the pre-existing definition."
						description_kind: "markdown"
						optional:         true
					}
					patterns: {
						type: ["list", "string"]
						description:      "An ordered list of grok expression to match and extract named captures with. Returns on the first expression in the list that matches."
						description_kind: "markdown"
						required:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					trace_match: {
						type:             "bool"
						description:      "when true, `_ingest._grok_match_index` will be inserted into your matched document’s metadata with the index into the pattern found in `patterns` that matched."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Extracts structured fields out of a single text field within a document. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/grok-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_gsub: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "The field to apply the replacement to."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource."
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					ignore_missing: {
						type:             "bool"
						description:      "If `true` and `field` does not exist or is `null`, the processor quietly exits without modifying the document."
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					pattern: {
						type:             "string"
						description:      "The pattern to be replaced."
						description_kind: "markdown"
						required:         true
					}
					replacement: {
						type:             "string"
						description:      "The string to replace the matching patterns with."
						description_kind: "markdown"
						required:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					target_field: {
						type:             "string"
						description:      "The field to assign the converted value to, by default `field` is updated in-place."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Converts a string field by applying a regular expression and a replacement. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/gsub-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_html_strip: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "The field to apply the replacement to."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource."
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					ignore_missing: {
						type:             "bool"
						description:      "If `true` and `field` does not exist or is `null`, the processor quietly exits without modifying the document."
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					target_field: {
						type:             "string"
						description:      "The field to assign the converted value to, by default `field` is updated in-place."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Removes HTML tags from the field. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/htmlstrip-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_join: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "Field containing array values to join."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource."
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					separator: {
						type:             "string"
						description:      "The separator character."
						description_kind: "markdown"
						required:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					target_field: {
						type:             "string"
						description:      "The field to assign the converted value to, by default `field` is updated in-place."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Joins each element of an array into a single string using a separator character between each element. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/join-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_json: {
			version: 0
			block: {
				attributes: {
					add_to_root: {
						type:             "bool"
						description:      "Flag that forces the parsed JSON to be added at the top level of the document. `target_field` must not be set when this option is chosen."
						description_kind: "markdown"
						optional:         true
					}
					add_to_root_conflict_strategy: {
						type:             "string"
						description:      "When set to `replace`, root fields that conflict with fields from the parsed JSON will be overridden. When set to `merge`, conflicting fields will be merged. Only applicable if `add_to_root` is set to `true`."
						description_kind: "markdown"
						optional:         true
					}
					allow_duplicate_keys: {
						type:             "bool"
						description:      "When set to `true`, the JSON parser will not fail if the JSON contains duplicate keys. Instead, the last encountered value for any duplicate key wins."
						description_kind: "markdown"
						optional:         true
					}
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "The field to be parsed."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource."
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					target_field: {
						type:             "string"
						description:      "The field that the converted structured object will be written into. Any existing content in this field will be overwritten."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Converts a JSON string into a structured JSON object. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/json-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_kv: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					exclude_keys: {
						type: ["set", "string"]
						description:      "List of keys to exclude from document"
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "The field to be parsed. Supports template snippets."
						description_kind: "markdown"
						required:         true
					}
					field_split: {
						type:             "string"
						description:      "Regex pattern to use for splitting key-value pairs."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					ignore_missing: {
						type:             "bool"
						description:      "If `true` and `field` does not exist or is `null`, the processor quietly exits without modifying the document."
						description_kind: "markdown"
						optional:         true
					}
					include_keys: {
						type: ["set", "string"]
						description:      "List of keys to filter and insert into document. Defaults to including all keys"
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					prefix: {
						type:             "string"
						description:      "Prefix to be added to extracted keys."
						description_kind: "markdown"
						optional:         true
					}
					strip_brackets: {
						type:             "bool"
						description:      "If `true` strip brackets `()`, `<>`, `[]` as well as quotes `'` and `\"` from extracted values."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					target_field: {
						type:             "string"
						description:      "The field to insert the extracted keys into. Defaults to the root of the document."
						description_kind: "markdown"
						optional:         true
					}
					trim_key: {
						type:             "string"
						description:      "String of characters to trim from extracted keys."
						description_kind: "markdown"
						optional:         true
					}
					trim_value: {
						type:             "string"
						description:      "String of characters to trim from extracted values."
						description_kind: "markdown"
						optional:         true
					}
					value_split: {
						type:             "string"
						description:      "Regex pattern to use for splitting the key from the value within a key-value pair."
						description_kind: "markdown"
						required:         true
					}
				}
				description:      "This processor helps automatically parse messages (or specific event fields) which are of the foo=bar variety. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/kv-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_lowercase: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "The field to make lowercase."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource."
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					ignore_missing: {
						type:             "bool"
						description:      "If `true` and `field` does not exist or is `null`, the processor quietly exits without modifying the document."
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					target_field: {
						type:             "string"
						description:      "The field to assign the converted value to, by default `field` is updated in-place."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Converts a string to its lowercase equivalent. If the field is an array of strings, all members of the array will be converted. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/lowercase-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_network_direction: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					destination_ip: {
						type:             "string"
						description:      "Field containing the destination IP address."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource."
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					ignore_missing: {
						type:             "bool"
						description:      "If `true` and `field` does not exist or is `null`, the processor quietly exits without modifying the document."
						description_kind: "markdown"
						optional:         true
					}
					internal_networks: {
						type: ["set", "string"]
						description:      "List of internal networks."
						description_kind: "markdown"
						optional:         true
					}
					internal_networks_field: {
						type:             "string"
						description:      "A field on the given document to read the internal_networks configuration from."
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					source_ip: {
						type:             "string"
						description:      "Field containing the source IP address."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					target_field: {
						type:             "string"
						description:      "Output field for the network direction."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Calculates the network direction given a source IP address, destination IP address, and a list of internal networks. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/network-direction-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_pipeline: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource."
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The name of the pipeline to execute."
						description_kind: "markdown"
						required:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Executes another pipeline. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/pipeline-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_registered_domain: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "Field containing the source FQDN."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource."
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					ignore_missing: {
						type:             "bool"
						description:      "If `true` and `field` does not exist or is `null`, the processor quietly exits without modifying the document."
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					target_field: {
						type:             "string"
						description:      "Object field containing extracted domain components. If an `<empty string>`, the processor adds components to the document’s root."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Extracts the registered domain (also known as the effective top-level domain or eTLD), sub-domain, and top-level domain from a fully qualified domain name (FQDN). See: https://www.elastic.co/guide/en/elasticsearch/reference/current/registered-domain-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_remove: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type: ["set", "string"]
						description:      "Fields to be removed."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource."
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					ignore_missing: {
						type:             "bool"
						description:      "If `true` and `field` does not exist or is `null`, the processor quietly exits without modifying the document."
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Removes existing fields. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/remove-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_rename: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "The field to be renamed."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource."
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					ignore_missing: {
						type:             "bool"
						description:      "If `true` and `field` does not exist or is `null`, the processor quietly exits without modifying the document."
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					target_field: {
						type:             "string"
						description:      "The new name of the field."
						description_kind: "markdown"
						required:         true
					}
				}
				description:      "Renames an existing field. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/rename-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_reroute: {
			version: 0
			block: {
				attributes: {
					dataset: {
						type:             "string"
						description:      "The destination dataset to route the document to."
						description_kind: "markdown"
						optional:         true
					}
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					destination: {
						type:             "string"
						description:      "The destination data stream, index, or index alias to route the document to."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource."
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					namespace: {
						type:             "string"
						description:      "The destination namespace to route the document to."
						description_kind: "markdown"
						optional:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Reroutes a document to a different data stream, index, or index alias. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/reroute-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_script: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource."
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					lang: {
						type:             "string"
						description:      "Script language."
						description_kind: "markdown"
						optional:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					params: {
						type:             "string"
						description:      "Object containing parameters for the script."
						description_kind: "markdown"
						optional:         true
					}
					script_id: {
						type:             "string"
						description:      "ID of a stored script. If no `source` is specified, this parameter is required."
						description_kind: "markdown"
						optional:         true
					}
					source: {
						type:             "string"
						description:      "Inline script. If no id is specified, this parameter is required."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Runs an inline or stored script on incoming documents. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/script-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_set: {
			version: 0
			block: {
				attributes: {
					copy_from: {
						type:             "string"
						description:      "The origin field which will be copied to `field`, cannot set `value` simultaneously."
						description_kind: "markdown"
						optional:         true
					}
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "The field to insert, upsert, or update."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource."
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_empty_value: {
						type:             "bool"
						description:      "If `true` and `value` is a template snippet that evaluates to `null` or the empty string, the processor quietly exits without modifying the document"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					media_type: {
						type:             "string"
						description:      "The media type for encoding value."
						description_kind: "markdown"
						optional:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					override: {
						type:             "bool"
						description:      "If processor will update fields with pre-existing non-null-valued field."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					value: {
						type:             "string"
						description:      "The value to be set for the field. Supports template snippets. May specify only one of `value` or `copy_from`."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Sets one field and associates it with the specified value. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/set-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_set_security_user: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "The field to store the user information into."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource."
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					properties: {
						type: ["set", "string"]
						description:      "Controls what user related properties are added to the `field`."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Sets user-related details (such as username, roles, email, full_name, metadata, api_key, realm and authentication_type) from the current authenticated user to the current document by pre-processing the ingest. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/ingest-node-set-security-user-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_sort: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "The field to be sorted"
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource."
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					order: {
						type:             "string"
						description:      "The sort order to use. Accepts `asc` or `desc`."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					target_field: {
						type:             "string"
						description:      "The field to assign the sorted value to, by default `field` is updated in-place"
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Sorts the elements of an array ascending or descending. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/sort-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_split: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "The field to split"
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource."
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					ignore_missing: {
						type:             "bool"
						description:      "If `true` and `field` does not exist or is `null`, the processor quietly exits without modifying the document."
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					preserve_trailing: {
						type:             "bool"
						description:      "Preserves empty trailing fields, if any."
						description_kind: "markdown"
						optional:         true
					}
					separator: {
						type:             "string"
						description:      "A regex which matches the separator, eg `,` or `\\s+`"
						description_kind: "markdown"
						required:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					target_field: {
						type:             "string"
						description:      "The field to assign the converted value to, by default `field` is updated in-place."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Splits a field into an array using a separator character. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/split-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_trim: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "The string-valued field to trim whitespace from."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource."
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					ignore_missing: {
						type:             "bool"
						description:      "If `true` and `field` does not exist or is `null`, the processor quietly exits without modifying the document."
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					target_field: {
						type:             "string"
						description:      "The field to assign the trimmed value to, by default `field` is updated in-place."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Trims whitespace from field. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/trim-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_uppercase: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "The field to make uppercase."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource."
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					ignore_missing: {
						type:             "bool"
						description:      "If `true` and `field` does not exist or is `null`, the processor quietly exits without modifying the document."
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					target_field: {
						type:             "string"
						description:      "The field to assign the converted value to, by default `field` is updated in-place."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Converts a string to its uppercase equivalent. If the field is an array of strings, all members of the array will be converted. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/uppercase-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_uri_parts: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "Field containing the URI string."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource."
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					keep_original: {
						type:             "bool"
						description:      "If true, the processor copies the unparsed URI to `<target_field>.original.`"
						description_kind: "markdown"
						optional:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					remove_if_successful: {
						type:             "bool"
						description:      "If `true`, the processor removes the `field` after parsing the URI string. If parsing fails, the processor does not remove the `field`."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					target_field: {
						type:             "string"
						description:      "Output field for the URI object."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Parses a Uniform Resource Identifier (URI) string and extracts its components as an object. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/uri-parts-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_urldecode: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description of the processor. "
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "The field to decode"
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource."
						description_kind: "markdown"
						computed:         true
					}
					if: {
						type:             "string"
						description:      "Conditionally execute the processor"
						description_kind: "markdown"
						optional:         true
					}
					ignore_failure: {
						type:             "bool"
						description:      "Ignore failures for the processor. "
						description_kind: "markdown"
						optional:         true
					}
					ignore_missing: {
						type:             "bool"
						description:      "If `true` and `field` does not exist or is `null`, the processor quietly exits without modifying the document."
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					on_failure: {
						type: ["list", "string"]
						description:      "Handle failures for the processor."
						description_kind: "markdown"
						optional:         true
					}
					tag: {
						type:             "string"
						description:      "Identifier for the processor."
						description_kind: "markdown"
						optional:         true
					}
					target_field: {
						type:             "string"
						description:      "The field to assign the converted value to, by default `field` is updated in-place."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "URL-decodes a string. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/urldecode-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_ingest_processor_user_agent: {
			version: 0
			block: {
				attributes: {
					extract_device_type: {
						type:             "bool"
						description:      "Extracts device type from the user agent string on a best-effort basis. Supported only starting from Elasticsearch version **8.0**"
						description_kind: "markdown"
						optional:         true
					}
					field: {
						type:             "string"
						description:      "The field containing the user agent string."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource."
						description_kind: "markdown"
						computed:         true
					}
					ignore_missing: {
						type:             "bool"
						description:      "If `true` and `field` does not exist or is `null`, the processor quietly exits without modifying the document."
						description_kind: "markdown"
						optional:         true
					}
					json: {
						type:             "string"
						description:      "JSON representation of this data source."
						description_kind: "markdown"
						computed:         true
					}
					properties: {
						type: ["set", "string"]
						description:      "Controls what properties are added to `target_field`."
						description_kind: "markdown"
						optional:         true
					}
					regex_file: {
						type:             "string"
						description:      "The name of the file in the `config/ingest-user-agent` directory containing the regular expressions for parsing the user agent string."
						description_kind: "markdown"
						optional:         true
					}
					target_field: {
						type:             "string"
						description:      "The field that will be filled with the user agent details."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Extracts details from the user agent string a browser sends with its web requests. See: https://www.elastic.co/guide/en/elasticsearch/reference/current/user-agent-processor.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_security_role: {
			version: 0
			block: {
				attributes: {
					applications: {
						type: ["set", ["object", {
							application: "string"
							privileges: ["set", "string"]
							resources: ["set", "string"]
						}]]
						description:      "A list of application privilege entries."
						description_kind: "markdown"
						computed:         true
					}
					cluster: {
						type: ["set", "string"]
						description:      "A list of cluster privileges. These privileges define the cluster level actions that users with this role are able to execute."
						description_kind: "markdown"
						computed:         true
					}
					description: {
						type:             "string"
						description:      "The description of the role."
						description_kind: "markdown"
						computed:         true
					}
					global: {
						type:             "string"
						description:      "An object defining global privileges."
						description_kind: "markdown"
						computed:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					indices: {
						type: ["set", ["object", {
							allow_restricted_indices: "bool"
							field_security: ["list", ["object", {
								except: ["set", "string"]
								grant: ["set", "string"]
							}]]
							names: ["set", "string"]
							privileges: ["set", "string"]
							query: "string"
						}]]
						description:      "A list of indices permissions entries."
						description_kind: "markdown"
						computed:         true
					}
					metadata: {
						type:             "string"
						description:      "Optional meta-data."
						description_kind: "markdown"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The name of the role."
						description_kind: "markdown"
						required:         true
					}
					remote_indices: {
						type: ["set", ["object", {
							clusters: ["set", "string"]
							field_security: ["list", ["object", {
								except: ["set", "string"]
								grant: ["set", "string"]
							}]]
							names: ["set", "string"]
							privileges: ["set", "string"]
							query: "string"
						}]]
						description:      "A list of remote indices permissions entries. Remote indices are effective for remote clusters configured with the API key based model. They have no effect for remote clusters configured with the certificate based model."
						description_kind: "markdown"
						computed:         true
					}
					run_as: {
						type: ["set", "string"]
						description:      "A list of users that the owners of this role can impersonate."
						description_kind: "markdown"
						optional:         true
					}
				}
				block_types: elasticsearch_connection: {
					nesting_mode: "list"
					block: {
						attributes: {
							api_key: {
								type:             "string"
								description:      "API Key to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							bearer_token: {
								type:             "string"
								description:      "Bearer Token to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							ca_data: {
								type:             "string"
								description:      "PEM-encoded custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							ca_file: {
								type:             "string"
								description:      "Path to a custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							cert_data: {
								type:             "string"
								description:      "PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							cert_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							endpoints: {
								type: ["list", "string"]
								description:      "A list of endpoints where the terraform provider will point to, this must include the http(s) schema and port number."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							es_client_authentication: {
								type:             "string"
								description:      "ES Client Authentication field to be used with the JWT token"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							headers: {
								type: ["map", "string"]
								description:      "A list of headers to be sent with each request to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							insecure: {
								type:             "bool"
								description:      "Disable TLS certificate validation"
								description_kind: "markdown"
								optional:         true
							}
							key_data: {
								type:             "string"
								description:      "PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							key_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
							}
							password: {
								type:             "string"
								description:      "Password to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							username: {
								type:             "string"
								description:      "Username to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
							}
						}
						description:      "Elasticsearch connection configuration block. This property will be removed in a future provider version. Configure the Elasticsearch connection via the provider configuration instead."
						description_kind: "markdown"
						deprecated:       true
					}
					max_items: 1
				}
				description:      "Retrieves roles in the native realm. See, https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-role.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_security_role_mapping: {
			version: 0
			block: {
				attributes: {
					enabled: {
						type:             "bool"
						description:      "Mappings that have `enabled` set to `false` are ignored when role mapping is performed."
						description_kind: "markdown"
						computed:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					metadata: {
						type:             "string"
						description:      "Additional metadata that helps define which roles are assigned to each user. Keys beginning with `_` are reserved for system usage."
						description_kind: "markdown"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The distinct name that identifies the role mapping, used solely as an identifier."
						description_kind: "markdown"
						required:         true
					}
					role_templates: {
						type:             "string"
						description:      "A list of mustache templates that will be evaluated to determine the roles names that should granted to the users that match the role mapping rules."
						description_kind: "markdown"
						computed:         true
					}
					roles: {
						type: ["set", "string"]
						description:      "A list of role names that are granted to the users that match the role mapping rules."
						description_kind: "markdown"
						computed:         true
					}
					rules: {
						type:             "string"
						description:      "The rules that determine which users should be matched by the mapping. A rule is a logical condition that is expressed by using a JSON DSL."
						description_kind: "markdown"
						computed:         true
					}
				}
				block_types: elasticsearch_connection: {
					nesting_mode: "list"
					block: {
						attributes: {
							api_key: {
								type:             "string"
								description:      "API Key to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							bearer_token: {
								type:             "string"
								description:      "Bearer Token to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							ca_data: {
								type:             "string"
								description:      "PEM-encoded custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							ca_file: {
								type:             "string"
								description:      "Path to a custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							cert_data: {
								type:             "string"
								description:      "PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							cert_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							endpoints: {
								type: ["list", "string"]
								description:      "A list of endpoints where the terraform provider will point to, this must include the http(s) schema and port number."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							es_client_authentication: {
								type:             "string"
								description:      "ES Client Authentication field to be used with the JWT token"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							headers: {
								type: ["map", "string"]
								description:      "A list of headers to be sent with each request to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							insecure: {
								type:             "bool"
								description:      "Disable TLS certificate validation"
								description_kind: "markdown"
								optional:         true
							}
							key_data: {
								type:             "string"
								description:      "PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							key_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
							}
							password: {
								type:             "string"
								description:      "Password to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							username: {
								type:             "string"
								description:      "Username to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
							}
						}
						description:      "Elasticsearch connection configuration block. This property will be removed in a future provider version. Configure the Elasticsearch connection via the provider configuration instead."
						description_kind: "markdown"
						deprecated:       true
					}
					max_items: 1
				}
				description:      "Retrieves role mappings. See, https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-role-mapping.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_security_user: {
			version: 0
			block: {
				attributes: {
					email: {
						type:             "string"
						description:      "The email of the user."
						description_kind: "markdown"
						computed:         true
					}
					enabled: {
						type:             "bool"
						description:      "Specifies whether the user is enabled. The default value is true."
						description_kind: "markdown"
						computed:         true
					}
					full_name: {
						type:             "string"
						description:      "The full name of the user."
						description_kind: "markdown"
						computed:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					metadata: {
						type:             "string"
						description:      "Arbitrary metadata that you want to associate with the user."
						description_kind: "markdown"
						computed:         true
					}
					roles: {
						type: ["set", "string"]
						description:      "A set of roles the user has. The roles determine the user’s access permissions. Default is []."
						description_kind: "markdown"
						computed:         true
					}
					username: {
						type:             "string"
						description:      "An identifier for the user"
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: elasticsearch_connection: {
					nesting_mode: "list"
					block: {
						attributes: {
							api_key: {
								type:             "string"
								description:      "API Key to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							bearer_token: {
								type:             "string"
								description:      "Bearer Token to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							ca_data: {
								type:             "string"
								description:      "PEM-encoded custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							ca_file: {
								type:             "string"
								description:      "Path to a custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							cert_data: {
								type:             "string"
								description:      "PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							cert_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							endpoints: {
								type: ["list", "string"]
								description:      "A list of endpoints where the terraform provider will point to, this must include the http(s) schema and port number."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							es_client_authentication: {
								type:             "string"
								description:      "ES Client Authentication field to be used with the JWT token"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							headers: {
								type: ["map", "string"]
								description:      "A list of headers to be sent with each request to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							insecure: {
								type:             "bool"
								description:      "Disable TLS certificate validation"
								description_kind: "markdown"
								optional:         true
							}
							key_data: {
								type:             "string"
								description:      "PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							key_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
							}
							password: {
								type:             "string"
								description:      "Password to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							username: {
								type:             "string"
								description:      "Username to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
							}
						}
						description:      "Elasticsearch connection configuration block. This property will be removed in a future provider version. Configure the Elasticsearch connection via the provider configuration instead."
						description_kind: "markdown"
						deprecated:       true
					}
					max_items: 1
				}
				description:      "Get the information about the user in the ES cluster. See, https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-get-user.html"
				description_kind: "markdown"
			}
		}
		elasticstack_elasticsearch_snapshot_repository: {
			version: 0
			block: {
				attributes: {
					azure: {
						type: ["list", ["object", {
							base_path:                  "string"
							chunk_size:                 "string"
							client:                     "string"
							compress:                   "bool"
							container:                  "string"
							location_mode:              "string"
							max_restore_bytes_per_sec:  "string"
							max_snapshot_bytes_per_sec: "string"
							readonly:                   "bool"
						}]]
						description:      "Azure Blob storage as a repository. Set only if the type of the fetched repo is `azure`."
						description_kind: "markdown"
						computed:         true
					}
					fs: {
						type: ["list", ["object", {
							chunk_size:                 "string"
							compress:                   "bool"
							location:                   "string"
							max_number_of_snapshots:    "number"
							max_restore_bytes_per_sec:  "string"
							max_snapshot_bytes_per_sec: "string"
							readonly:                   "bool"
						}]]
						description:      "Shared filesystem repository. Set only if the type of the fetched repo is `fs`."
						description_kind: "markdown"
						computed:         true
					}
					gcs: {
						type: ["list", ["object", {
							base_path:                  "string"
							bucket:                     "string"
							chunk_size:                 "string"
							client:                     "string"
							compress:                   "bool"
							max_restore_bytes_per_sec:  "string"
							max_snapshot_bytes_per_sec: "string"
							readonly:                   "bool"
						}]]
						description:      "Google Cloud Storage service as a repository. Set only if the type of the fetched repo is `gcs`."
						description_kind: "markdown"
						computed:         true
					}
					hdfs: {
						type: ["list", ["object", {
							chunk_size:                 "string"
							compress:                   "bool"
							load_defaults:              "bool"
							max_restore_bytes_per_sec:  "string"
							max_snapshot_bytes_per_sec: "string"
							path:                       "string"
							readonly:                   "bool"
							uri:                        "string"
						}]]
						description:      "HDFS File System as a repository. Set only if the type of the fetched repo is `hdfs`."
						description_kind: "markdown"
						computed:         true
					}
					id: {
						type:             "string"
						description:      "Internal identifier of the resource"
						description_kind: "markdown"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "Name of the snapshot repository."
						description_kind: "markdown"
						required:         true
					}
					s3: {
						type: ["list", ["object", {
							base_path:                  "string"
							bucket:                     "string"
							buffer_size:                "string"
							canned_acl:                 "string"
							chunk_size:                 "string"
							client:                     "string"
							compress:                   "bool"
							max_restore_bytes_per_sec:  "string"
							max_snapshot_bytes_per_sec: "string"
							path_style_access:          "bool"
							readonly:                   "bool"
							server_side_encryption:     "bool"
							storage_class:              "string"
						}]]
						description:      "AWS S3 as a repository. Set only if the type of the fetched repo is `s3`."
						description_kind: "markdown"
						computed:         true
					}
					type: {
						type:             "string"
						description:      "Repository type."
						description_kind: "markdown"
						computed:         true
					}
					url: {
						type: ["list", ["object", {
							chunk_size:                 "string"
							compress:                   "bool"
							http_max_retries:           "number"
							http_socket_timeout:        "string"
							max_number_of_snapshots:    "number"
							max_restore_bytes_per_sec:  "string"
							max_snapshot_bytes_per_sec: "string"
							readonly:                   "bool"
							url:                        "string"
						}]]
						description:      "URL repository. Set only if the type of the fetched repo is `url`."
						description_kind: "markdown"
						computed:         true
					}
				}
				block_types: elasticsearch_connection: {
					nesting_mode: "list"
					block: {
						attributes: {
							api_key: {
								type:             "string"
								description:      "API Key to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							bearer_token: {
								type:             "string"
								description:      "Bearer Token to use for authentication to Elasticsearch"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							ca_data: {
								type:             "string"
								description:      "PEM-encoded custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							ca_file: {
								type:             "string"
								description:      "Path to a custom Certificate Authority certificate"
								description_kind: "markdown"
								optional:         true
							}
							cert_data: {
								type:             "string"
								description:      "PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							cert_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded certificate for client auth"
								description_kind: "markdown"
								optional:         true
							}
							endpoints: {
								type: ["list", "string"]
								description:      "A list of endpoints where the terraform provider will point to, this must include the http(s) schema and port number."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							es_client_authentication: {
								type:             "string"
								description:      "ES Client Authentication field to be used with the JWT token"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							headers: {
								type: ["map", "string"]
								description:      "A list of headers to be sent with each request to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							insecure: {
								type:             "bool"
								description:      "Disable TLS certificate validation"
								description_kind: "markdown"
								optional:         true
							}
							key_data: {
								type:             "string"
								description:      "PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							key_file: {
								type:             "string"
								description:      "Path to a file containing the PEM encoded private key for client auth"
								description_kind: "markdown"
								optional:         true
							}
							password: {
								type:             "string"
								description:      "Password to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							username: {
								type:             "string"
								description:      "Username to use for API authentication to Elasticsearch."
								description_kind: "markdown"
								optional:         true
							}
						}
						description:      "Elasticsearch connection configuration block. This property will be removed in a future provider version. Configure the Elasticsearch connection via the provider configuration instead."
						description_kind: "markdown"
						deprecated:       true
					}
					max_items: 1
				}
				description:      "Gets information about the registered snapshot repositories."
				description_kind: "markdown"
			}
		}
		elasticstack_fleet_enrollment_tokens: {
			version: 0
			block: {
				attributes: {
					id: {
						type:             "string"
						description:      "The ID of this resource."
						description_kind: "plain"
						computed:         true
					}
					policy_id: {
						type:             "string"
						description:      "The identifier of the target agent policy. When provided, only the enrollment tokens associated with this agent policy will be selected. Omit this value to select all enrollment tokens."
						description_kind: "plain"
						optional:         true
					}
					tokens: {
						nested_type: {
							attributes: {
								active: {
									type:             "bool"
									description:      "Indicates if the enrollment token is active."
									description_kind: "plain"
									computed:         true
								}
								api_key: {
									type:             "string"
									description:      "The API key."
									description_kind: "plain"
									computed:         true
									sensitive:        true
								}
								api_key_id: {
									type:             "string"
									description:      "The API key identifier."
									description_kind: "plain"
									computed:         true
								}
								created_at: {
									type:             "string"
									description:      "The time at which the enrollment token was created."
									description_kind: "plain"
									computed:         true
								}
								key_id: {
									type:             "string"
									description:      "The unique identifier of the enrollment token."
									description_kind: "plain"
									computed:         true
								}
								name: {
									type:             "string"
									description:      "The name of the enrollment token."
									description_kind: "plain"
									computed:         true
								}
								policy_id: {
									type:             "string"
									description:      "The identifier of the associated agent policy."
									description_kind: "plain"
									computed:         true
								}
							}
							nesting_mode: "list"
						}
						description:      "A list of enrollment tokens."
						description_kind: "plain"
						computed:         true
					}
				}
				description:      "Retrieves Elasticsearch API keys used to enroll Elastic Agents in Fleet. See: https://www.elastic.co/guide/en/fleet/current/fleet-enrollment-tokens.html"
				description_kind: "plain"
			}
		}
		elasticstack_fleet_integration: {
			version: 0
			block: {
				attributes: {
					id: {
						type:             "string"
						description:      "The ID of this resource."
						description_kind: "plain"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The integration package name."
						description_kind: "plain"
						required:         true
					}
					prerelease: {
						type:             "bool"
						description:      "Include prerelease packages."
						description_kind: "plain"
						optional:         true
					}
					version: {
						type:             "string"
						description:      "The integration package version."
						description_kind: "plain"
						computed:         true
					}
				}
				description:      "Retrieves the latest version of an integration package in Fleet."
				description_kind: "plain"
			}
		}
		elasticstack_kibana_action_connector: {
			version: 0
			block: {
				attributes: {
					config: {
						type:             "string"
						description:      "The configuration for the connector. Configuration properties vary depending on the connector type."
						description_kind: "markdown"
						computed:         true
					}
					connector_id: {
						type:             "string"
						description:      "A UUID v1 or v4 randomly generated ID."
						description_kind: "markdown"
						computed:         true
					}
					connector_type_id: {
						type:             "string"
						description:      "The ID of the connector type, e.g. `.index`."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					is_deprecated: {
						type:             "bool"
						description:      "Indicates whether the connector type is deprecated."
						description_kind: "markdown"
						computed:         true
					}
					is_missing_secrets: {
						type:             "bool"
						description:      "Indicates whether secrets are missing for the connector."
						description_kind: "markdown"
						computed:         true
					}
					is_preconfigured: {
						type:             "bool"
						description:      "Indicates whether it is a preconfigured connector."
						description_kind: "markdown"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The name of the connector. While this name does not have to be unique, a distinctive name can help you identify a connector."
						description_kind: "markdown"
						required:         true
					}
					space_id: {
						type:             "string"
						description:      "An identifier for the space. If space_id is not provided, the default space is used."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Search for a connector by name, space id, and type. Note, that this data source will fail if more than one connector shares the same name."
				description_kind: "markdown"
			}
		}
		elasticstack_kibana_security_role: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "Description for the role"
						description_kind: "markdown"
						optional:         true
					}
					elasticsearch: {
						type: ["set", ["object", {
							cluster: ["set", "string"]
							indices: ["set", ["object", {
								field_security: ["list", ["object", {
									except: ["set", "string"]
									grant: ["set", "string"]
								}]]
								names: ["set", "string"]
								privileges: ["set", "string"]
								query: "string"
							}]]
							remote_indices: ["set", ["object", {
								clusters: ["set", "string"]
								field_security: ["list", ["object", {
									except: ["set", "string"]
									grant: ["set", "string"]
								}]]
								names: ["set", "string"]
								privileges: ["set", "string"]
								query: "string"
							}]]
							run_as: ["set", "string"]
						}]]
						description:      "Elasticsearch cluster and index privileges."
						description_kind: "markdown"
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					kibana: {
						type: ["set", ["object", {
							base: ["set", "string"]
							feature: ["set", ["object", {
								name: "string"
								privileges: ["set", "string"]
							}]]
							spaces: ["set", "string"]
						}]]
						description:      "The list of objects that specify the Kibana privileges for the role."
						description_kind: "markdown"
						computed:         true
					}
					metadata: {
						type:             "string"
						description:      "Optional meta-data."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The name for the role."
						description_kind: "markdown"
						required:         true
					}
				}
				description:      "Retrieve a specific role. See, https://www.elastic.co/guide/en/kibana/current/role-management-specific-api-get.html"
				description_kind: "markdown"
			}
		}
		elasticstack_kibana_spaces: {
			version: 0
			block: {
				attributes: {
					id: {
						type:             "string"
						description:      "Generated ID for the spaces."
						description_kind: "plain"
						computed:         true
					}
					spaces: {
						nested_type: {
							attributes: {
								color: {
									type:             "string"
									description:      "The hexadecimal color code used in the space avatar. By default, the color is automatically generated from the space name."
									description_kind: "plain"
									computed:         true
								}
								description: {
									type:             "string"
									description:      "The description for the space."
									description_kind: "plain"
									optional:         true
								}
								disabled_features: {
									type: ["list", "string"]
									description:      "The list of disabled features for the space. To get a list of available feature IDs, use the Features API (https://www.elastic.co/guide/en/kibana/master/features-api-get.html)."
									description_kind: "plain"
									optional:         true
								}
								id: {
									type:             "string"
									description:      "Internal identifier of the resource."
									description_kind: "plain"
									computed:         true
								}
								image_url: {
									type:             "string"
									description:      "The data-URL encoded image to display in the space avatar."
									description_kind: "plain"
									optional:         true
								}
								initials: {
									type:             "string"
									description:      "The initials shown in the space avatar. By default, the initials are automatically generated from the space name. Initials must be 1 or 2 characters."
									description_kind: "plain"
									computed:         true
								}
								name: {
									type:             "string"
									description:      "The display name for the space."
									description_kind: "plain"
									required:         true
								}
							}
							nesting_mode: "list"
						}
						description:      "The list of spaces."
						description_kind: "plain"
						computed:         true
					}
				}
				description:      "Manages Kibana spaces"
				description_kind: "plain"
			}
		}
	}
}
