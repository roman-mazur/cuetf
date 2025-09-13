package res

import "list"

#google_recaptcha_enterprise_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_recaptcha_enterprise_key")
	close({
		// The timestamp corresponding to the creation of this Key.
		create_time?: string

		// Human-readable display name of this key. Modifiable by user.
		display_name!: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// See [Creating and managing
		// labels](https://cloud.google.com/recaptcha-enterprise/docs/labels).
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field `effective_labels` for all of the
		// labels present on the resource.
		labels?: [string]: string
		android_settings?: matchN(1, [#android_settings, list.MaxItems(1) & [...#android_settings]])

		// The resource id for the Key, which is the same as the Site Key
		// itself.
		name?: string
		ios_settings?: matchN(1, [#ios_settings, list.MaxItems(1) & [...#ios_settings]])
		testing_options?: matchN(1, [#testing_options, list.MaxItems(1) & [...#testing_options]])
		timeouts?: #timeouts
		waf_settings?: matchN(1, [#waf_settings, list.MaxItems(1) & [...#waf_settings]])

		// The project for the resource
		project?: string
		web_settings?: matchN(1, [#web_settings, list.MaxItems(1) & [...#web_settings]])

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#android_settings: close({
		// If set to true, it means allowed_package_names will not be
		// enforced.
		allow_all_package_names?: bool

		// Android package names of apps allowed to use the key. Example:
		// 'com.companyname.appname'
		allowed_package_names?: [...string]
	})

	#ios_settings: close({
		// If set to true, it means allowed_bundle_ids will not be
		// enforced.
		allow_all_bundle_ids?: bool

		// iOS bundle ids of apps allowed to use the key. Example:
		// 'com.companyname.productname.appname'
		allowed_bundle_ids?: [...string]
	})

	#testing_options: close({
		// For challenge-based keys only (CHECKBOX, INVISIBLE), all
		// challenge requests for this site will return nocaptcha if
		// NOCAPTCHA, or an unsolvable challenge if UNSOLVABLE_CHALLENGE.
		// Possible values: TESTING_CHALLENGE_UNSPECIFIED, NOCAPTCHA,
		// UNSOLVABLE_CHALLENGE
		testing_challenge?: string

		// All assessments for this Key will return this score. Must be
		// between 0 (likely not legitimate) and 1 (likely legitimate)
		// inclusive.
		testing_score?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#waf_settings: close({
		// Supported WAF features. For more information, see
		// https://cloud.google.com/recaptcha-enterprise/docs/usecase#comparison_of_features.
		// Possible values: CHALLENGE_PAGE, SESSION_TOKEN, ACTION_TOKEN,
		// EXPRESS
		waf_feature!: string

		// The WAF service that uses this key. Possible values: CA, FASTLY
		waf_service!: string
	})

	#web_settings: close({
		// If set to true, it means allowed_domains will not be enforced.
		allow_all_domains?: bool

		// If set to true, the key can be used on AMP (Accelerated Mobile
		// Pages) websites. This is supported only for the SCORE
		// integration type.
		allow_amp_traffic?: bool

		// Domains or subdomains of websites allowed to use the key. All
		// subdomains of an allowed domain are automatically allowed. A
		// valid domain requires a host and must not include any path,
		// port, query or fragment. Examples: 'example.com' or
		// 'subdomain.example.com'
		allowed_domains?: [...string]

		// Settings for the frequency and difficulty at which this key
		// triggers captcha challenges. This should only be specified for
		// IntegrationTypes CHECKBOX and INVISIBLE. Possible values:
		// CHALLENGE_SECURITY_PREFERENCE_UNSPECIFIED, USABILITY, BALANCE,
		// SECURITY
		challenge_security_preference?: string

		// Required. Describes how this key is integrated with the
		// website. Possible values: SCORE, CHECKBOX, INVISIBLE
		integration_type!: string
	})
}
