package res

import "list"

#google_apikeys_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_apikeys_key")
	close({
		// Human-readable display name of this API key. Modifiable by
		// user.
		display_name?: string

		// Output only. An encrypted and signed value held by this key.
		// This field can be accessed only through the `GetKeyString`
		// method.
		key_string?: string
		id?:         string

		// The resource name of the key. The name must be unique within
		// the project, must conform with RFC-1034, is restricted to
		// lower-cased letters, and has a maximum length of 63
		// characters. In another word, the name must match the regular
		// expression: `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`.
		name!: string

		// The project for the resource
		project?: string

		// The email of the service account the key is bound to. If this
		// field is specified, the key is a service account bound key and
		// auth enabled. See
		// [Documentation](https://cloud.devsite.corp.google.com/docs/authentication/api-keys?#api-keys-bound-sa)
		// for more details.
		service_account_email?: string

		// Output only. Unique id in UUID4 format.
		uid?: string
		restrictions?: matchN(1, [#restrictions, list.MaxItems(1) & [...#restrictions]])
		timeouts?: #timeouts
	})

	#restrictions: close({
		android_key_restrictions?: matchN(1, [_#defs."/$defs/restrictions/$defs/android_key_restrictions", list.MaxItems(1) & [..._#defs."/$defs/restrictions/$defs/android_key_restrictions"]])
		api_targets?: matchN(1, [_#defs."/$defs/restrictions/$defs/api_targets", [..._#defs."/$defs/restrictions/$defs/api_targets"]])
		browser_key_restrictions?: matchN(1, [_#defs."/$defs/restrictions/$defs/browser_key_restrictions", list.MaxItems(1) & [..._#defs."/$defs/restrictions/$defs/browser_key_restrictions"]])
		ios_key_restrictions?: matchN(1, [_#defs."/$defs/restrictions/$defs/ios_key_restrictions", list.MaxItems(1) & [..._#defs."/$defs/restrictions/$defs/ios_key_restrictions"]])
		server_key_restrictions?: matchN(1, [_#defs."/$defs/restrictions/$defs/server_key_restrictions", list.MaxItems(1) & [..._#defs."/$defs/restrictions/$defs/server_key_restrictions"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/restrictions/$defs/android_key_restrictions": close({
		allowed_applications!: matchN(1, [_#defs."/$defs/restrictions/$defs/android_key_restrictions/$defs/allowed_applications", [_, ...] & [..._#defs."/$defs/restrictions/$defs/android_key_restrictions/$defs/allowed_applications"]])
	})

	_#defs: "/$defs/restrictions/$defs/android_key_restrictions/$defs/allowed_applications": close({
		// The package name of the application.
		package_name!: string

		// The SHA1 fingerprint of the application. For example, both sha1
		// formats are acceptable :
		// DA:39:A3:EE:5E:6B:4B:0D:32:55:BF:EF:95:60:18:90:AF:D8:07:09 or
		// DA39A3EE5E6B4B0D3255BFEF95601890AFD80709. Output format is the
		// latter.
		sha1_fingerprint!: string
	})

	_#defs: "/$defs/restrictions/$defs/api_targets": close({
		// Optional. List of one or more methods that can be called. If
		// empty, all methods for the service are allowed. A wildcard (*)
		// can be used as the last symbol. Valid examples:
		// `google.cloud.translate.v2.TranslateService.GetSupportedLanguage`
		// `TranslateText` `Get*` `translate.googleapis.com.Get*`
		methods?: [...string]

		// The service for this restriction. It should be the canonical
		// service name, for example: `translate.googleapis.com`. You can
		// use `gcloud services list` to get a list of services that are
		// enabled in the project.
		service!: string
	})

	_#defs: "/$defs/restrictions/$defs/browser_key_restrictions": close({
		// A list of regular expressions for the referrer URLs that are
		// allowed to make API calls with this key.
		allowed_referrers!: [...string]
	})

	_#defs: "/$defs/restrictions/$defs/ios_key_restrictions": close({
		// A list of bundle IDs that are allowed when making API calls
		// with this key.
		allowed_bundle_ids!: [...string]
	})

	_#defs: "/$defs/restrictions/$defs/server_key_restrictions": close({
		// A list of the caller IP addresses that are allowed to make API
		// calls with this key.
		allowed_ips!: [...string]
	})
}
