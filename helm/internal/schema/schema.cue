package schema

format_version: "1.0"
provider_schemas: "registry.terraform.io/hashicorp/helm": {
	provider: {
		version: 0
		block: {
			attributes: {
				burst_limit: {
					type:             "number"
					description:      "Helm burst limit. Increase this if you have a cluster with many CRDs"
					description_kind: "plain"
					optional:         true
				}
				debug: {
					type:             "bool"
					description:      "Debug indicates whether or not Helm is running in Debug mode."
					description_kind: "plain"
					optional:         true
				}
				helm_driver: {
					type:             "string"
					description:      "The backend storage driver. Values are: configmap, secret, memory, sql"
					description_kind: "plain"
					optional:         true
				}
				plugins_path: {
					type:             "string"
					description:      "The path to the helm plugins directory"
					description_kind: "plain"
					optional:         true
				}
				registry_config_path: {
					type:             "string"
					description:      "The path to the registry config file"
					description_kind: "plain"
					optional:         true
				}
				repository_cache: {
					type:             "string"
					description:      "The path to the file containing cached repository indexes"
					description_kind: "plain"
					optional:         true
				}
				repository_config_path: {
					type:             "string"
					description:      "The path to the file containing repository names and URLs"
					description_kind: "plain"
					optional:         true
				}
			}
			block_types: {
				experiments: {
					nesting_mode: "list"
					block: {
						attributes: manifest: {
							type:             "bool"
							description:      "Enable full diff by storing the rendered manifest in the state. This has similar limitations as when using helm install --dry-run. See https://helm.sh/docs/chart_best_practices/custom_resource_definitions/#install-a-crd-declaration-before-using-the-resource"
							description_kind: "plain"
							optional:         true
						}
						description:      "Enable and disable experimental features."
						description_kind: "plain"
					}
					max_items: 1
				}
				kubernetes: {
					nesting_mode: "list"
					block: {
						attributes: {
							client_certificate: {
								type:             "string"
								description:      "PEM-encoded client certificate for TLS authentication."
								description_kind: "plain"
								optional:         true
							}
							client_key: {
								type:             "string"
								description:      "PEM-encoded client certificate key for TLS authentication."
								description_kind: "plain"
								optional:         true
							}
							cluster_ca_certificate: {
								type:             "string"
								description:      "PEM-encoded root certificates bundle for TLS authentication."
								description_kind: "plain"
								optional:         true
							}
							config_context: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							config_context_auth_info: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							config_context_cluster: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							config_path: {
								type:             "string"
								description:      "Path to the kube config file. Can be set with KUBE_CONFIG_PATH."
								description_kind: "plain"
								optional:         true
							}
							config_paths: {
								type: ["list", "string"]
								description:      "A list of paths to kube config files. Can be set with KUBE_CONFIG_PATHS environment variable."
								description_kind: "plain"
								optional:         true
							}
							host: {
								type:             "string"
								description:      "The hostname (in form of URI) of Kubernetes master."
								description_kind: "plain"
								optional:         true
							}
							insecure: {
								type:             "bool"
								description:      "Whether server should be accessed without verifying the TLS certificate."
								description_kind: "plain"
								optional:         true
							}
							password: {
								type:             "string"
								description:      "The password to use for HTTP basic authentication when accessing the Kubernetes master endpoint."
								description_kind: "plain"
								optional:         true
							}
							proxy_url: {
								type:             "string"
								description:      "URL to the proxy to be used for all API requests"
								description_kind: "plain"
								optional:         true
							}
							tls_server_name: {
								type:             "string"
								description:      "Server name passed to the server for SNI and is used in the client to check server certificates against."
								description_kind: "plain"
								optional:         true
							}
							token: {
								type:             "string"
								description:      "Token to authenticate an service account"
								description_kind: "plain"
								optional:         true
							}
							username: {
								type:             "string"
								description:      "The username to use for HTTP basic authentication when accessing the Kubernetes master endpoint."
								description_kind: "plain"
								optional:         true
							}
						}
						block_types: exec: {
							nesting_mode: "list"
							block: {
								attributes: {
									api_version: {
										type:             "string"
										description_kind: "plain"
										required:         true
									}
									args: {
										type: ["list", "string"]
										description_kind: "plain"
										optional:         true
									}
									command: {
										type:             "string"
										description_kind: "plain"
										required:         true
									}
									env: {
										type: ["map", "string"]
										description_kind: "plain"
										optional:         true
									}
								}
								description_kind: "plain"
							}
							max_items: 1
						}
						description:      "Kubernetes configuration."
						description_kind: "plain"
					}
					max_items: 1
				}
				registry: {
					nesting_mode: "list"
					block: {
						attributes: {
							password: {
								type:             "string"
								description:      "The password to use for the OCI HTTP basic authentication when accessing the Kubernetes master endpoint."
								description_kind: "plain"
								required:         true
							}
							url: {
								type:             "string"
								description:      "OCI URL in form of oci://host:port or oci://host"
								description_kind: "plain"
								required:         true
							}
							username: {
								type:             "string"
								description:      "The username to use for the OCI HTTP basic authentication when accessing the Kubernetes master endpoint."
								description_kind: "plain"
								required:         true
							}
						}
						description:      "RegistryClient configuration."
						description_kind: "plain"
					}
				}
			}
			description_kind: "plain"
		}
	}
	resource_schemas: helm_release: {
		version: 1
		block: {
			attributes: {
				atomic: {
					type:             "bool"
					description:      "If set, installation process purges chart on fail. The wait flag will be set automatically if atomic is used"
					description_kind: "plain"
					optional:         true
				}
				chart: {
					type:             "string"
					description:      "Chart name to be installed. A path may be used."
					description_kind: "plain"
					required:         true
				}
				cleanup_on_fail: {
					type:             "bool"
					description:      "Allow deletion of new resources created in this upgrade when upgrade fails"
					description_kind: "plain"
					optional:         true
				}
				create_namespace: {
					type:             "bool"
					description:      "Create the namespace if it does not exist"
					description_kind: "plain"
					optional:         true
				}
				dependency_update: {
					type:             "bool"
					description:      "Run helm dependency update before installing the chart"
					description_kind: "plain"
					optional:         true
				}
				description: {
					type:             "string"
					description:      "Add a custom description"
					description_kind: "plain"
					optional:         true
				}
				devel: {
					type:             "bool"
					description:      "Use chart development versions, too. Equivalent to version '>0.0.0-0'. If `version` is set, this is ignored"
					description_kind: "plain"
					optional:         true
				}
				disable_crd_hooks: {
					type:             "bool"
					description:      "Prevent CRD hooks from, running, but run other hooks.  See helm install --no-crd-hook"
					description_kind: "plain"
					optional:         true
				}
				disable_openapi_validation: {
					type:             "bool"
					description:      "If set, the installation process will not validate rendered templates against the Kubernetes OpenAPI Schema"
					description_kind: "plain"
					optional:         true
				}
				disable_webhooks: {
					type:             "bool"
					description:      "Prevent hooks from running."
					description_kind: "plain"
					optional:         true
				}
				force_update: {
					type:             "bool"
					description:      "Force resource update through delete/recreate if needed."
					description_kind: "plain"
					optional:         true
				}
				id: {
					type:             "string"
					description_kind: "plain"
					optional:         true
					computed:         true
				}
				keyring: {
					type:             "string"
					description:      "Location of public keys used for verification. Used only if `verify` is true"
					description_kind: "plain"
					optional:         true
				}
				lint: {
					type:             "bool"
					description:      "Run helm lint when planning"
					description_kind: "plain"
					optional:         true
				}
				manifest: {
					type:             "string"
					description:      "The rendered manifest as JSON."
					description_kind: "plain"
					computed:         true
				}
				max_history: {
					type:             "number"
					description:      "Limit the maximum number of revisions saved per release. Use 0 for no limit"
					description_kind: "plain"
					optional:         true
				}
				metadata: {
					type: ["list", ["object", {
						app_version: "string"
						chart:       "string"
						name:        "string"
						namespace:   "string"
						revision:    "number"
						values:      "string"
						version:     "string"
					}]]
					description:      "Status of the deployed release."
					description_kind: "plain"
					computed:         true
				}
				name: {
					type:             "string"
					description:      "Release name. The length must not be longer than 53 characters."
					description_kind: "plain"
					required:         true
				}
				namespace: {
					type:             "string"
					description:      "Namespace to install the release into."
					description_kind: "plain"
					optional:         true
				}
				pass_credentials: {
					type:             "bool"
					description:      "Pass credentials to all domains"
					description_kind: "plain"
					optional:         true
				}
				recreate_pods: {
					type:             "bool"
					description:      "Perform pods restart during upgrade/rollback"
					description_kind: "plain"
					optional:         true
				}
				render_subchart_notes: {
					type:             "bool"
					description:      "If set, render subchart notes along with the parent"
					description_kind: "plain"
					optional:         true
				}
				replace: {
					type:             "bool"
					description:      "Re-use the given name, even if that name is already used. This is unsafe in production"
					description_kind: "plain"
					optional:         true
				}
				repository: {
					type:             "string"
					description:      "Repository where to locate the requested chart. If is a URL the chart is installed without installing the repository."
					description_kind: "plain"
					optional:         true
				}
				repository_ca_file: {
					type:             "string"
					description:      "The Repositories CA File"
					description_kind: "plain"
					optional:         true
				}
				repository_cert_file: {
					type:             "string"
					description:      "The repositories cert file"
					description_kind: "plain"
					optional:         true
				}
				repository_key_file: {
					type:             "string"
					description:      "The repositories cert key file"
					description_kind: "plain"
					optional:         true
				}
				repository_password: {
					type:             "string"
					description:      "Password for HTTP basic authentication"
					description_kind: "plain"
					optional:         true
					sensitive:        true
				}
				repository_username: {
					type:             "string"
					description:      "Username for HTTP basic authentication"
					description_kind: "plain"
					optional:         true
				}
				reset_values: {
					type:             "bool"
					description:      "When upgrading, reset the values to the ones built into the chart"
					description_kind: "plain"
					optional:         true
				}
				reuse_values: {
					type:             "bool"
					description:      "When upgrading, reuse the last release's values and merge in any overrides. If 'reset_values' is specified, this is ignored"
					description_kind: "plain"
					optional:         true
				}
				skip_crds: {
					type:             "bool"
					description:      "If set, no CRDs will be installed. By default, CRDs are installed if not already present"
					description_kind: "plain"
					optional:         true
				}
				status: {
					type:             "string"
					description:      "Status of the release."
					description_kind: "plain"
					computed:         true
				}
				timeout: {
					type:             "number"
					description:      "Time in seconds to wait for any individual kubernetes operation."
					description_kind: "plain"
					optional:         true
				}
				values: {
					type: ["list", "string"]
					description:      "List of values in raw yaml format to pass to helm."
					description_kind: "plain"
					optional:         true
				}
				verify: {
					type:             "bool"
					description:      "Verify the package before installing it."
					description_kind: "plain"
					optional:         true
				}
				version: {
					type:             "string"
					description:      "Specify the exact chart version to install. If this is not specified, the latest version is installed."
					description_kind: "plain"
					optional:         true
					computed:         true
				}
				wait: {
					type:             "bool"
					description:      "Will wait until all resources are in a ready state before marking the release as successful."
					description_kind: "plain"
					optional:         true
				}
				wait_for_jobs: {
					type:             "bool"
					description:      "If wait is enabled, will wait until all Jobs have been completed before marking the release as successful."
					description_kind: "plain"
					optional:         true
				}
			}
			block_types: {
				postrender: {
					nesting_mode: "list"
					block: {
						attributes: {
							args: {
								type: ["list", "string"]
								description:      "an argument to the post-renderer (can specify multiple)"
								description_kind: "plain"
								optional:         true
							}
							binary_path: {
								type:             "string"
								description:      "The command binary path."
								description_kind: "plain"
								required:         true
							}
						}
						description:      "Postrender command configuration."
						description_kind: "plain"
					}
					max_items: 1
				}
				set: {
					nesting_mode: "set"
					block: {
						attributes: {
							name: {
								type:             "string"
								description_kind: "plain"
								required:         true
							}
							type: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							value: {
								type:             "string"
								description_kind: "plain"
								required:         true
							}
						}
						description:      "Custom values to be merged with the values."
						description_kind: "plain"
					}
				}
				set_list: {
					nesting_mode: "list"
					block: {
						attributes: {
							name: {
								type:             "string"
								description_kind: "plain"
								required:         true
							}
							value: {
								type: ["list", "string"]
								description_kind: "plain"
								required:         true
							}
						}
						description:      "Custom sensitive values to be merged with the values."
						description_kind: "plain"
					}
				}
				set_sensitive: {
					nesting_mode: "set"
					block: {
						attributes: {
							name: {
								type:             "string"
								description_kind: "plain"
								required:         true
							}
							type: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							value: {
								type:             "string"
								description_kind: "plain"
								required:         true
								sensitive:        true
							}
						}
						description:      "Custom sensitive values to be merged with the values."
						description_kind: "plain"
					}
				}
			}
			description_kind: "plain"
		}
	}
	data_source_schemas: helm_template: {
		version: 0
		block: {
			attributes: {
				api_versions: {
					type: ["list", "string"]
					description:      "Kubernetes api versions used for Capabilities.APIVersions"
					description_kind: "plain"
					optional:         true
				}
				atomic: {
					type:             "bool"
					description:      "If set, installation process purges chart on fail. The wait flag will be set automatically if atomic is used"
					description_kind: "plain"
					optional:         true
				}
				chart: {
					type:             "string"
					description:      "Chart name to be installed. A path may be used."
					description_kind: "plain"
					required:         true
				}
				crds: {
					type: ["list", "string"]
					description:      "List of rendered CRDs from the chart."
					description_kind: "plain"
					optional:         true
					computed:         true
				}
				create_namespace: {
					type:             "bool"
					description:      "Create the namespace if it does not exist"
					description_kind: "plain"
					optional:         true
				}
				dependency_update: {
					type:             "bool"
					description:      "Run helm dependency update before installing the chart"
					description_kind: "plain"
					optional:         true
				}
				description: {
					type:             "string"
					description:      "Add a custom description"
					description_kind: "plain"
					optional:         true
				}
				devel: {
					type:             "bool"
					description:      "Use chart development versions, too. Equivalent to version '>0.0.0-0'. If `version` is set, this is ignored"
					description_kind: "plain"
					optional:         true
				}
				disable_openapi_validation: {
					type:             "bool"
					description:      "If set, the installation process will not validate rendered templates against the Kubernetes OpenAPI Schema"
					description_kind: "plain"
					optional:         true
				}
				disable_webhooks: {
					type:             "bool"
					description:      "Prevent hooks from running."
					description_kind: "plain"
					optional:         true
				}
				id: {
					type:             "string"
					description_kind: "plain"
					optional:         true
					computed:         true
				}
				include_crds: {
					type:             "bool"
					description:      "Include CRDs in the templated output"
					description_kind: "plain"
					optional:         true
				}
				is_upgrade: {
					type:             "bool"
					description:      "Set .Release.IsUpgrade instead of .Release.IsInstall"
					description_kind: "plain"
					optional:         true
				}
				keyring: {
					type:             "string"
					description:      "Location of public keys used for verification. Used only if `verify` is true"
					description_kind: "plain"
					optional:         true
				}
				kube_version: {
					type:             "string"
					description:      "Kubernetes version used for Capabilities.KubeVersion"
					description_kind: "plain"
					optional:         true
				}
				manifest: {
					type:             "string"
					description:      "Concatenated rendered chart templates. This corresponds to the output of the `helm template` command."
					description_kind: "plain"
					optional:         true
					computed:         true
				}
				manifests: {
					type: ["map", "string"]
					description:      "Map of rendered chart templates indexed by the template name."
					description_kind: "plain"
					optional:         true
					computed:         true
				}
				name: {
					type:             "string"
					description:      "Release name."
					description_kind: "plain"
					required:         true
				}
				namespace: {
					type:             "string"
					description:      "Namespace to install the release into."
					description_kind: "plain"
					optional:         true
				}
				notes: {
					type:             "string"
					description:      "Rendered notes if the chart contains a `NOTES.txt`."
					description_kind: "plain"
					optional:         true
					computed:         true
				}
				pass_credentials: {
					type:             "bool"
					description:      "Pass credentials to all domains"
					description_kind: "plain"
					optional:         true
				}
				render_subchart_notes: {
					type:             "bool"
					description:      "If set, render subchart notes along with the parent"
					description_kind: "plain"
					optional:         true
				}
				replace: {
					type:             "bool"
					description:      "Re-use the given name, even if that name is already used. This is unsafe in production"
					description_kind: "plain"
					optional:         true
				}
				repository: {
					type:             "string"
					description:      "Repository where to locate the requested chart. If is a URL the chart is installed without installing the repository."
					description_kind: "plain"
					optional:         true
				}
				repository_ca_file: {
					type:             "string"
					description:      "The Repositories CA File"
					description_kind: "plain"
					optional:         true
				}
				repository_cert_file: {
					type:             "string"
					description:      "The repositories cert file"
					description_kind: "plain"
					optional:         true
				}
				repository_key_file: {
					type:             "string"
					description:      "The repositories cert key file"
					description_kind: "plain"
					optional:         true
				}
				repository_password: {
					type:             "string"
					description:      "Password for HTTP basic authentication"
					description_kind: "plain"
					optional:         true
					sensitive:        true
				}
				repository_username: {
					type:             "string"
					description:      "Username for HTTP basic authentication"
					description_kind: "plain"
					optional:         true
				}
				reset_values: {
					type:             "bool"
					description:      "When upgrading, reset the values to the ones built into the chart"
					description_kind: "plain"
					optional:         true
				}
				reuse_values: {
					type:             "bool"
					description:      "When upgrading, reuse the last release's values and merge in any overrides. If 'reset_values' is specified, this is ignored"
					description_kind: "plain"
					optional:         true
				}
				show_only: {
					type: ["list", "string"]
					description:      "Only show manifests rendered from the given templates"
					description_kind: "plain"
					optional:         true
				}
				skip_crds: {
					type:             "bool"
					description:      "If set, no CRDs will be installed. By default, CRDs are installed if not already present"
					description_kind: "plain"
					optional:         true
				}
				skip_tests: {
					type:             "bool"
					description:      "If set, tests will not be rendered. By default, tests are rendered"
					description_kind: "plain"
					optional:         true
				}
				timeout: {
					type:             "number"
					description:      "Time in seconds to wait for any individual kubernetes operation."
					description_kind: "plain"
					optional:         true
				}
				validate: {
					type:             "bool"
					description:      "Validate your manifests against the Kubernetes cluster you are currently pointing at. This is the same validation performed on an install"
					description_kind: "plain"
					optional:         true
				}
				values: {
					type: ["list", "string"]
					description:      "List of values in raw yaml format to pass to helm."
					description_kind: "plain"
					optional:         true
				}
				verify: {
					type:             "bool"
					description:      "Verify the package before installing it."
					description_kind: "plain"
					optional:         true
				}
				version: {
					type:             "string"
					description:      "Specify the exact chart version to install. If this is not specified, the latest version is installed."
					description_kind: "plain"
					optional:         true
					computed:         true
				}
				wait: {
					type:             "bool"
					description:      "Will wait until all resources are in a ready state before marking the release as successful."
					description_kind: "plain"
					optional:         true
				}
			}
			block_types: {
				postrender: {
					nesting_mode: "list"
					block: {
						attributes: binary_path: {
							type:             "string"
							description:      "The command binary path."
							description_kind: "plain"
							required:         true
						}
						description:      "Postrender command configuration."
						description_kind: "plain"
					}
					max_items: 1
				}
				set: {
					nesting_mode: "set"
					block: {
						attributes: {
							name: {
								type:             "string"
								description_kind: "plain"
								required:         true
							}
							type: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							value: {
								type:             "string"
								description_kind: "plain"
								required:         true
							}
						}
						description:      "Custom values to be merged with the values."
						description_kind: "plain"
					}
				}
				set_list: {
					nesting_mode: "list"
					block: {
						attributes: {
							name: {
								type:             "string"
								description_kind: "plain"
								required:         true
							}
							value: {
								type: ["list", "string"]
								description_kind: "plain"
								required:         true
							}
						}
						description:      "Custom sensitive values to be merged with the values."
						description_kind: "plain"
					}
				}
				set_sensitive: {
					nesting_mode: "set"
					block: {
						attributes: {
							name: {
								type:             "string"
								description_kind: "plain"
								required:         true
							}
							type: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							value: {
								type:             "string"
								description_kind: "plain"
								required:         true
								sensitive:        true
							}
						}
						description:      "Custom sensitive values to be merged with the values."
						description_kind: "plain"
					}
				}
				set_string: {
					nesting_mode: "set"
					block: {
						attributes: {
							name: {
								type:             "string"
								description_kind: "plain"
								required:         true
							}
							value: {
								type:             "string"
								description_kind: "plain"
								required:         true
							}
						}
						description:      "Custom string values to be merged with the values."
						description_kind: "plain"
						deprecated:       true
					}
				}
			}
			description_kind: "plain"
		}
	}
}