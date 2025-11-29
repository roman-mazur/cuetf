package data

#google_gke_hub_feature: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_gke_hub_feature")
	close({
		// Output only. When the Feature resource was created.
		create_time?: string

		// Output only. When the Feature resource was deleted.
		delete_time?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Optional. Fleet Default Membership Configuration.
		fleet_default_member_config?: [...close({
			configmanagement?: [...close({
				config_sync?: [...close({
					enabled?: bool
					git?: [...close({
						gcp_service_account_email?: string
						https_proxy?:               string
						policy_dir?:                string
						secret_type?:               string
						sync_branch?:               string
						sync_repo?:                 string
						sync_rev?:                  string
						sync_wait_secs?:            string
					})]
					metrics_gcp_service_account_email?: string
					oci?: [...close({
						gcp_service_account_email?: string
						policy_dir?:                string
						secret_type?:               string
						sync_repo?:                 string
						sync_wait_secs?:            string
						version?:                   string
					})]
					prevent_drift?: bool
					source_format?: string
				})]
				management?: string
				version?:    string
			})]
			mesh?: [...close({
				management?: string
			})]
			policycontroller?: [...close({
				policy_controller_hub_config?: [...close({
					audit_interval_seconds?:     number
					constraint_violation_limit?: number
					deployment_configs?: [...close({
						component?: string
						container_resources?: [...close({
							limits?: [...close({
								cpu?:    string
								memory?: string
							})]
							requests?: [...close({
								cpu?:    string
								memory?: string
							})]
						})]
						pod_affinity?: string
						pod_toleration?: [...close({
							effect?:   string
							key?:      string
							operator?: string
							value?:    string
						})]
						replica_count?: number
					})]
					exemptable_namespaces?: [...string]
					install_spec?:       string
					log_denies_enabled?: bool
					monitoring?: [...close({
						backends?: [...string]
					})]
					mutation_enabled?: bool
					policy_content?: [...close({
						bundles?: [...close({
							bundle?: string
							exempted_namespaces?: [...string]
						})]
						template_library?: [...close({
							installation?: string
						})]
					})]
					referential_rules_enabled?: bool
				})]
				version?: string
			})]
		})]
		id?: string

		// GCP labels for this Feature.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location for the resource
		location!: string

		// The full, unique name of this Feature resource
		name!:    string
		project?: string

		// State of the Feature resource itself.
		resource_state?: [...close({
			has_resources?: bool
			state?:         string
		})]

		// Optional. Hub-wide Feature configuration. If this Feature does
		// not support any Hub-wide configuration, this field may be
		// unused.
		spec?: [...close({
			clusterupgrade?: [...close({
				gke_upgrade_overrides?: [...close({
					post_conditions?: [...close({
						soaking?: string
					})]
					upgrade?: [...close({
						name?:    string
						version?: string
					})]
				})]
				post_conditions?: [...close({
					soaking?: string
				})]
				upstream_fleets?: [...string]
			})]
			fleetobservability?: [...close({
				logging_config?: [...close({
					default_config?: [...close({
						mode?: string
					})]
					fleet_scope_logs_config?: [...close({
						mode?: string
					})]
				})]
			})]
			multiclusteringress?: [...close({
				config_membership?: string
			})]
			rbacrolebindingactuation?: [...close({
				allowed_custom_roles?: [...string]
			})]
		})]

		// Output only. The Hub-wide Feature state
		state?: [...close({
			state?: [...close({
				code?:        string
				description?: string
				update_time?: string
			})]
		})]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Output only. When the Feature resource was last updated.
		update_time?: string
	})
}
