package res

#google_ces_app_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_ces_app_version")
	close({
		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		app!: string

		// The ID to use for the app version, which will become the final
		// component
		// of the app version's resource name. If not provided, a unique
		// ID will be
		// automatically assigned for the app version.
		app_version_id!: string

		// Timestamp when the app version was created.
		create_time?: string

		// Email of the user who created the app version.
		creator?: string

		// The description of the app version.
		description?: string

		// The display name of the app version.
		display_name?: string

		// Etag used to ensure the object hasn't changed during a
		// read-modify-write
		// operation. If the etag is empty, the update will overwrite any
		// concurrent
		// changes.
		etag?: string
		id?:   string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string
		timeouts?: #timeouts

		// Identifier. The unique identifier of the app version.
		// Format:
		// 'projects/{project}/locations/{location}/apps/{app}/versions/{version}'
		name?:    string
		project?: string

		// A snapshot of the app.
		snapshot?: [...close({
			agents?: [...close({
				after_agent_callbacks?: [...close({
					description?: string
					disabled?:    bool
					python_code?: string
				})]
				after_model_callbacks?: [...close({
					description?: string
					disabled?:    bool
					python_code?: string
				})]
				after_tool_callbacks?: [...close({
					description?: string
					disabled?:    bool
					python_code?: string
				})]
				before_agent_callbacks?: [...close({
					description?: string
					disabled?:    bool
					python_code?: string
				})]
				before_model_callbacks?: [...close({
					description?: string
					disabled?:    bool
					python_code?: string
				})]
				before_tool_callbacks?: [...close({
					description?: string
					disabled?:    bool
					python_code?: string
				})]
				child_agents?: [...string]
				create_time?:       string
				description?:       string
				display_name?:      string
				etag?:              string
				generated_summary?: string
				guardrails?: [...string]
				instruction?: string
				llm_agent?: [...close({})]
				model_settings?: [...close({
					model?:       string
					temperature?: number
				})]
				name?: string
				remote_dialogflow_agent?: [...close({
					agent?:          string
					environment_id?: string
					flow_id?:        string
					input_variable_mapping?: [string]:  string
					output_variable_mapping?: [string]: string
				})]
				tools?: [...string]
				toolsets?: [...close({
					tool_ids?: [...string]
					toolset?: string
				})]
				update_time?: string
			})]
			app?: [...close({
				audio_processing_config?: [...close({
					ambient_sound_config?: [...close({
						gcs_uri?:                string
						prebuilt_ambient_sound?: string
						volume_gain_db?:         number
					})]
					barge_in_config?: [...close({
						barge_in_awareness?: bool
					})]
					inactivity_timeout?: string
					synthesize_speech_configs?: [...close({
						language_code?: string
						speaking_rate?: number
						voice?:         string
					})]
				})]
				client_certificate_settings?: [...close({
					passphrase?:      string
					private_key?:     string
					tls_certificate?: string
				})]
				create_time?: string
				data_store_settings?: [...close({
					engines?: [...close({
						name?: string
						type?: string
					})]
				})]
				default_channel_profile?: [...close({
					channel_type?:             string
					disable_barge_in_control?: bool
					disable_dtmf?:             bool
					persona_property?: [...close({
						persona?: string
					})]
					profile_id?: string
					web_widget_config?: [...close({
						modality?:         string
						theme?:            string
						web_widget_title?: string
					})]
				})]
				deployment_count?: number
				description?:      string
				display_name?:     string
				etag?:             string
				evaluation_metrics_thresholds?: [...close({
					golden_evaluation_metrics_thresholds?: [...close({
						expectation_level_metrics_thresholds?: [...close({
							tool_invocation_parameter_correctness_threshold?: number
						})]
						turn_level_metrics_thresholds?: [...close({
							overall_tool_invocation_correctness_threshold?: number
							semantic_similarity_success_threshold?:         number
						})]
					})]
				})]
				global_instruction?: string
				guardrails?: [...string]
				language_settings?: [...close({
					default_language_code?:       string
					enable_multilingual_support?: bool
					fallback_action?:             string
					supported_language_codes?: [...string]
				})]
				logging_settings?: [...close({
					audio_recording_config?: [...close({
						gcs_bucket?:      string
						gcs_path_prefix?: string
					})]
					bigquery_export_settings?: [...close({
						dataset?: string
						enabled?: bool
						project?: string
					})]
					cloud_logging_settings?: [...close({
						enable_cloud_logging?: bool
					})]
					conversation_logging_settings?: [...close({
						disable_conversation_logging?: bool
					})]
					redaction_config?: [...close({
						deidentify_template?: string
						enable_redaction?:    bool
						inspect_template?:    string
					})]
				})]
				metadata?: [string]: string
				model_settings?: [...close({
					model?:       string
					temperature?: number
				})]
				name?:       string
				root_agent?: string
				time_zone_settings?: [...close({
					time_zone?: string
				})]
				update_time?: string
				variable_declarations?: [...close({
					description?: string
					name?:        string
					schema?: [...close({
						additional_properties?: string
						any_of?:                string
						default?:               string
						defs?:                  string
						description?:           string
						enum?: [...string]
						items?:        string
						nullable?:     bool
						prefix_items?: string
						properties?:   string
						ref?:          string
						required?: [...string]
						type?:         string
						unique_items?: bool
					})]
				})]
			})]
			examples?: [...close({
				create_time?:  string
				description?:  string
				display_name?: string
				entry_agent?:  string
				etag?:         string
				invalid?:      bool
				messages?: [...close({
					chunks?: [...close({
						agent_transfer?: [...close({
							display_name?: string
							target_agent?: string
						})]
						image?: [...close({
							data?:      string
							mime_type?: string
						})]
						text?: string
						tool_call?: [...close({
							args?:         string
							display_name?: string
							id?:           string
							tool?:         string
							toolset_tool?: [...close({
								tool_id?: string
								toolset?: string
							})]
						})]
						tool_response?: [...close({
							display_name?: string
							id?:           string
							response?:     string
							tool?:         string
							toolset_tool?: [...close({
								tool_id?: string
								toolset?: string
							})]
						})]
						updated_variables?: string
					})]
					role?: string
				})]
				name?:        string
				update_time?: string
			})]
			guardrails?: [...close({
				action?: [...close({
					generative_answer?: [...close({
						prompt?: string
					})]
					respond_immediately?: [...close({
						responses?: [...close({
							disabled?: bool
							text?:     string
						})]
					})]
					transfer_agent?: [...close({
						agent?: string
					})]
				})]
				code_callback?: [...close({
					after_agent_callback?: [...close({
						description?: string
						disabled?:    bool
						python_code?: string
					})]
					after_model_callback?: [...close({
						description?: string
						disabled?:    bool
						python_code?: string
					})]
					before_agent_callback?: [...close({
						description?: string
						disabled?:    bool
						python_code?: string
					})]
					before_model_callback?: [...close({
						description?: string
						disabled?:    bool
						python_code?: string
					})]
				})]
				content_filter?: [...close({
					banned_contents?: [...string]
					banned_contents_in_agent_response?: [...string]
					banned_contents_in_user_input?: [...string]
					disregard_diacritics?: bool
					match_type?:           string
				})]
				create_time?:  string
				description?:  string
				display_name?: string
				enabled?:      bool
				etag?:         string
				llm_policy?: [...close({
					fail_open?:                 bool
					max_conversation_messages?: number
					model_settings?: [...close({
						model?:       string
						temperature?: number
					})]
					policy_scope?: string
					prompt?:       string
				})]
				llm_prompt_security?: [...close({
					custom_policy?: [...close({
						fail_open?:                 bool
						max_conversation_messages?: number
						model_settings?: [...close({
							model?:       string
							temperature?: number
						})]
						policy_scope?: string
						prompt?:       string
					})]
					default_settings?: [...close({
						default_prompt_template?: string
					})]
				})]
				model_safety?: [...close({
					safety_settings?: [...close({
						category?:  string
						threshold?: string
					})]
				})]
				name?:        string
				update_time?: string
			})]
			tools?: [...close({
				client_function?: [...close({
					description?: string
					name?:        string
					parameters?: [...close({
						additional_properties?: string
						any_of?:                string
						default?:               string
						defs?:                  string
						description?:           string
						enum?: [...string]
						items?:        string
						nullable?:     bool
						prefix_items?: string
						properties?:   string
						ref?:          string
						required?: [...string]
						type?:         string
						unique_items?: bool
					})]
					response?: [...close({
						additional_properties?: string
						any_of?:                string
						default?:               string
						defs?:                  string
						description?:           string
						enum?: [...string]
						items?:        string
						nullable?:     bool
						prefix_items?: string
						properties?:   string
						ref?:          string
						required?: [...string]
						type?:         string
						unique_items?: bool
					})]
				})]
				create_time?: string
				data_store_tool?: [...close({
					boost_specs?: [...close({
						data_stores?: [...string]
						spec?: [...close({
							condition_boost_specs?: [...close({
								boost?: number
								boost_control_spec?: [...close({
									attribute_type?: string
									control_points?: [...close({
										attribute_value?: string
										boost_amount?:    number
									})]
									field_name?:         string
									interpolation_type?: string
								})]
								condition?: string
							})]
						})]
					})]
					description?: string
					engine_source?: [...close({
						data_store_sources?: [...close({
							data_store?: [...close({
								connector_config?: [...close({
									collection?:              string
									collection_display_name?: string
									data_source?:             string
								})]
								create_time?:              string
								display_name?:             string
								document_processing_mode?: string
								name?:                     string
								type?:                     string
							})]
							filter?: string
						})]
						engine?: string
						filter?: string
					})]
					max_results?: number
					modality_configs?: [...close({
						grounding_config?: [...close({
							disabled?:        bool
							grounding_level?: number
						})]
						modality_type?: string
						rewriter_config?: [...close({
							disabled?: bool
							model_settings?: [...close({
								model?:       string
								temperature?: number
							})]
							prompt?: string
						})]
						summarization_config?: [...close({
							disabled?: bool
							model_settings?: [...close({
								model?:       string
								temperature?: number
							})]
							prompt?: string
						})]
					})]
					name?: string
				})]
				display_name?:      string
				etag?:              string
				execution_type?:    string
				generated_summary?: string
				google_search_tool?: [...close({
					description?: string
					exclude_domains?: [...string]
					name?: string
				})]
				name?: string
				open_api_tool?: [...close({
					api_authentication?: [...close({
						api_key_config?: [...close({
							api_key_secret_version?: string
							key_name?:               string
							request_location?:       string
						})]
						oauth_config?: [...close({
							client_id?:             string
							client_secret_version?: string
							oauth_grant_type?:      string
							scopes?: [...string]
							token_endpoint?: string
						})]
						service_account_auth_config?: [...close({
							service_account?: string
						})]
						service_agent_id_token_auth_config?: [...close({})]
					})]
					description?:           string
					ignore_unknown_fields?: bool
					name?:                  string
					open_api_schema?:       string
					service_directory_config?: [...close({
						service?: string
					})]
					tls_config?: [...close({
						ca_certs?: [...close({
							cert?:         string
							display_name?: string
						})]
					})]
					url?: string
				})]
				python_function?: [...close({
					description?: string
					name?:        string
					python_code?: string
				})]
				system_tool?: [...close({
					description?: string
					name?:        string
				})]
				update_time?: string
			})]
			toolsets?: [...close({
				create_time?:    string
				description?:    string
				display_name?:   string
				etag?:           string
				execution_type?: string
				name?:           string
				open_api_toolset?: [...close({
					api_authentication?: [...close({
						api_key_config?: [...close({
							api_key_secret_version?: string
							key_name?:               string
							request_location?:       string
						})]
						bearer_token_config?: [...close({
							token?: string
						})]
						oauth_config?: [...close({
							client_id?:             string
							client_secret_version?: string
							oauth_grant_type?:      string
							scopes?: [...string]
							token_endpoint?: string
						})]
						service_account_auth_config?: [...close({
							service_account?: string
						})]
						service_agent_id_token_auth_config?: [...close({})]
					})]
					ignore_unknown_fields?: bool
					open_api_schema?:       string
					service_directory_config?: [...close({
						service?: string
					})]
					tls_config?: [...close({
						ca_certs?: [...close({
							cert?:         string
							display_name?: string
						})]
					})]
					url?: string
				})]
				update_time?: string
			})]
		})]
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
