package res

#helm_release: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/helm_release")
	close({
		// If set, installation process purges chart on fail. The wait
		// flag will be set automatically if atomic is used
		atomic?: bool

		// Chart name to be installed. A path may be used
		chart!: string

		// Allow deletion of new resources created in this upgrade when
		// upgrade fails
		cleanup_on_fail?: bool

		// Create the namespace if it does not exist
		create_namespace?: bool

		// Run helm dependency update before installing the chart
		dependency_update?: bool

		// Add a custom description
		description?: string

		// Use chart development versions, too. Equivalent to version
		// '>0.0.0-0'. If 'version' is set, this is ignored
		devel?: bool

		// Prevent CRD hooks from running, but run other hooks. See helm
		// install --no-crd-hook
		disable_crd_hooks?: bool

		// Status of the deployed release.
		metadata?: close({
			// The version number of the application being deployed
			app_version?: string

			// The name of the chart
			chart?: string

			// FirstDeployed is an int64 which represents timestamp when the
			// release was first deployed.
			first_deployed?: number

			// LastDeployed is an int64 which represents timestamp when the
			// release was last deployed.
			last_deployed?: number

			// Name is the name of the release
			name?: string

			// Namespace is the kubernetes namespace of the release
			namespace?: string

			// Notes is the description of the deployed release, rendered from
			// templates.
			notes?: string

			// Version is an int32 which represents the version of the release
			revision?: number

			// Set of extra values. added to the chart. The sensitive data is
			// cloaked. JSON encoded.
			values?: string

			// A SemVer 2 conformant version string of the chart
			version?: string
		})

		// If set, the installation process will not validate rendered
		// templates against the Kubernetes OpenAPI Schema
		disable_openapi_validation?: bool

		// Prevent hooks from running
		disable_webhooks?: bool

		// Force resource update through delete/recreate if needed.
		force_update?: bool

		// Location of public keys used for verification, Used only if
		// 'verify is true'
		keyring?: string

		// Run helm lint when planning
		lint?: bool

		// The rendered manifest as JSON.
		manifest?: string
		id?:       string

		// Limit the maximum number of revisions saved per release. Use 0
		// for no limit
		max_history?: number

		// Postrender command config
		postrender?: close({
			// An argument to the post-renderer (can specify multiple)
			args?: [...string]

			// The common binary path
			binary_path!: string
		})

		// Custom values to be merged with the values
		set?: matchN(1, [close({
			name!:  string
			type?:  string
			value?: string
		}), [...close({
			name!:  string
			type?:  string
			value?: string
		})]])

		// Release name. The length must not be longer than 53 characters
		name!: string

		// Custom sensitive values to be merged with the values
		set_list?: matchN(1, [close({
			name!: string
			value!: [...string]
		}), [...close({
			name!: string
			value!: [...string]
		})]])

		// Namespace to install the release into
		namespace?: string

		// Custom sensitive values to be merged with the values
		set_sensitive?: matchN(1, [close({
			name!:  string
			type?:  string
			value!: string
		}), [...close({
			name!:  string
			type?:  string
			value!: string
		})]])

		// Pass credentials to all domains
		pass_credentials?: bool

		// Perform pods restart during upgrade/rollback
		recreate_pods?: bool

		// If set, render subchart notes along with the parent
		render_subchart_notes?: bool

		// Re-use the given name, even if that name is already used. This
		// is unsafe in production
		replace?: bool

		// Repository where to locate the requested chart. If it is a URL,
		// the chart is installed without installing the repository
		repository?: string

		// The Repositories CA file
		repository_ca_file?: string

		// The repositories cert file
		repository_cert_file?: string

		// The repositories cert key file
		repository_key_file?: string

		// Password for HTTP basic authentication
		repository_password?: string

		// Username for HTTP basic authentication
		repository_username?: string

		// When upgrading, reset the values to the ones built into the
		// chart
		reset_values?: bool

		// The kubernetes resources created by this release.
		resources?: [string]: string

		// When upgrading, reuse the last release's values and merge in
		// any overrides. If 'reset_values' is specified, this is ignored
		reuse_values?: bool

		// The current revision of the write-only "set_wo" attribute.
		// Incrementing this integer value will cause Terraform to update
		// the write-only value.
		set_wo_revision?: number

		// If set, no CRDs will be installed. By default, CRDs are
		// installed if not already present
		skip_crds?: bool

		// Status of the release
		status?: string

		// Custom values to be merged with the values
		set_wo?: matchN(1, [close({
			name!:  string
			type?:  string
			value!: string
		}), [...close({
			name!:  string
			type?:  string
			value!: string
		})]])

		// If set, Helm will take ownership of resources not already
		// annotated by this release. Useful for migrations or recovery.
		take_ownership?: bool

		// Time in seconds to wait for any individual kubernetes operation
		timeout?: number

		// If true, the provider will install the release at the specified
		// version even if a release not controlled by the provider is
		// present. This is equivalent to running 'helm upgrade
		// --install'. WARNING: this may not be suitable for production
		// use -- see the 'Upgrade Mode' note in the provider
		// documentation. Defaults to `false`.
		upgrade_install?: bool

		// List of values in raw YAML format to pass to helm
		values?: [...string]

		// Verify the package before installing it.
		verify?: bool

		// Specify the exact chart version to install. If this is not
		// specified, the latest version is installed
		version?: string
		timeouts?: close({
			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of
			// numbers and unit suffixes, such as "30s" or "2h45m". Valid
			// time units are "s" (seconds), "m" (minutes), "h" (hours).
			create?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of
			// numbers and unit suffixes, such as "30s" or "2h45m". Valid
			// time units are "s" (seconds), "m" (minutes), "h" (hours).
			// Setting a timeout for a Delete operation is only applicable if
			// changes are saved into state before the destroy operation
			// occurs.
			delete?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of
			// numbers and unit suffixes, such as "30s" or "2h45m". Valid
			// time units are "s" (seconds), "m" (minutes), "h" (hours). Read
			// operations occur during any refresh or planning operation when
			// refresh is enabled.
			read?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of
			// numbers and unit suffixes, such as "30s" or "2h45m". Valid
			// time units are "s" (seconds), "m" (minutes), "h" (hours).
			update?: string
		})

		// Will wait until all resources are in a ready state before
		// marking the release as successful.
		wait?: bool

		// If wait is enabled, will wait until all Jobs have been
		// completed before marking the release as successful.
		wait_for_jobs?: bool
	})
}
