package data

#helm_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/helm_template")
	close({
		// Kubernetes api versions used for Capabilities.APIVersions.
		api_versions?: [...string]

		// If set, the installation process purges the chart on fail. The
		// 'wait' flag will be set automatically if 'atomic' is used.
		atomic?: bool

		// Chart name to be installed. A path may be used.
		chart!: string

		// List of rendered CRDs from the chart.
		crds?: [...string]

		// Create the namespace if it does not exist.
		create_namespace?: bool

		// Run helm dependency update before installing the chart.
		dependency_update?: bool

		// Add a custom description.
		description?: string

		// Postrender command config
		postrender?: close({
			// An argument to the post-renderer (can specify multiple)
			args?: [...string]

			// The common binary path
			binary_path!: string
		})

		// Use chart development versions, too. Equivalent to version
		// '>0.0.0-0'. If `version` is set, this is ignored.
		devel?: bool

		// If set, the installation process will not validate rendered
		// templates against the Kubernetes OpenAPI Schema.
		disable_openapi_validation?: bool

		// Prevent hooks from running.
		disable_webhooks?: bool

		// Include CRDs in the templated output.
		include_crds?: bool

		// Set .Release.IsUpgrade instead of .Release.IsInstall.
		is_upgrade?: bool

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

		// Location of public keys used for verification. Used only if
		// `verify` is true.
		keyring?: string

		// Custom sensitive values to be merged with the values
		set_list?: matchN(1, [close({
			name?: string
			value!: [...string]
		}), [...close({
			name?: string
			value!: [...string]
		})]])

		// Kubernetes version used for Capabilities.KubeVersion.
		kube_version?: string

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

		// Concatenated rendered chart templates. This corresponds to the
		// output of the `helm template` command.
		manifest?: string

		// Write-only custom values to be merged with the values.
		set_wo?: matchN(1, [close({
			name!:  string
			type?:  string
			value!: string
		}), [...close({
			name!:  string
			type?:  string
			value!: string
		})]])

		// Map of rendered chart templates indexed by the template name.
		manifests?: [string]: string

		// Release name
		name!: string
		id?:   string

		// Namespace to install the release into.
		namespace?: string

		// Rendered notes if the chart contains a `NOTES.txt`.
		notes?: string

		// Pass credentials to all domains
		pass_credentials?: bool

		// If set, render subchart notes along with the parent.
		render_subchart_notes?: bool

		// Re-use the given name, even if that name is already used. This
		// is unsafe in production.
		replace?: bool

		// Repository where to locate the requested chart. If it is a URL
		// the chart is installed without installing the repository.
		repository?: string

		// The repository's CA file
		repository_ca_file?: string

		// The repository's cert file
		repository_cert_file?: string

		// The repository's cert key file
		repository_key_file?: string

		// Password for HTTP basic authentication
		repository_password?: string

		// Username for HTTP basic authentication
		repository_username?: string

		// When upgrading, reset the values to the ones built into the
		// chart.
		reset_values?: bool

		// When upgrading, reuse the last release's values and merge in
		// any overrides. If 'reset_values' is specified, this is
		// ignored.
		reuse_values?: bool

		// Only show manifests rendered from the given templates.
		show_only?: [...string]

		// If set, no CRDs will be installed. By default, CRDs are
		// installed if not already present.
		skip_crds?: bool

		// If set, tests will not be rendered. By default, tests are
		// rendered.
		skip_tests?: bool

		// Time in seconds to wait for any individual Kubernetes
		// operation.
		timeout?: number

		// Validate your manifests against the Kubernetes cluster you are
		// currently pointing at. This is the same validation performed
		// on an install.
		validate?: bool

		// List of values in raw yaml format to pass to helm.
		values?: [...string]

		// Verify the package before installing it.
		verify?: bool

		// Specify the exact chart version to install. If this is not
		// specified, the latest version is installed.
		version?: string

		// Will wait until all resources are in a ready state before
		// marking the release as successful.
		wait?: bool
		timeouts?: close({
			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of
			// numbers and unit suffixes, such as "30s" or "2h45m". Valid
			// time units are "s" (seconds), "m" (minutes), "h" (hours).
			read?: string
		})
	})
}
