package res

import "list"

#google_cloud_quotas_quota_preference: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_cloud_quotas_quota_preference")
	close({
		// An email address that can be used for quota related
		// communication between the Google Cloud and the user in case
		// the Google Cloud needs further information to make a decision
		// on whether the user preferred quota can be granted.
		//
		// The Google account for the email address must have quota update
		// permission for the project, folder or organization this quota
		// preference is for.
		contact_email?: string

		// Create time stamp.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// '2014-10-02T15:01:23Z' and '2014-10-02T15:01:23.045123456Z'.
		create_time?: string

		// The dimensions that this quota preference applies to. The key
		// of the map entry is the name of a dimension, such as "region",
		// "zone", "network_id", and the value of the map entry is the
		// dimension value. If a dimension is missing from the map of
		// dimensions, the quota preference applies to all the dimension
		// values except for those that have other quota preferences
		// configured for the specific value.
		//
		// NOTE: QuotaPreferences can only be applied across all values of
		// "user" and "resource" dimension. Do not set values for "user"
		// or "resource" in the dimension map.
		//
		// Example: '{"provider": "Foo Inc"}' where "provider" is a
		// service specific dimension.
		dimensions?: [string]: string

		// The current etag of the quota preference. If an etag is
		// provided on update and does not match the current server's
		// etag of the quota preference, the request will be blocked and
		// an ABORTED error will be returned. See
		// https://google.aip.dev/134#etags for more details on etags.
		etag?: string

		// The list of quota safety checks to be ignored. Default value:
		// "QUOTA_SAFETY_CHECK_UNSPECIFIED" Possible values:
		// ["QUOTA_SAFETY_CHECK_UNSPECIFIED",
		// "QUOTA_DECREASE_BELOW_USAGE",
		// "QUOTA_DECREASE_PERCENTAGE_TOO_HIGH"]
		ignore_safety_checks?: string
		id?:                   string

		// The reason / justification for this quota preference.
		justification?: string

		// The resource name of the quota preference. Required except in
		// the CREATE requests.
		name?: string

		// The parent of the quota preference. Allowed parents are
		// "projects/[project-id / number]" or "folders/[folder-id /
		// number]" or "organizations/[org-id / number]".
		parent?: string
		quota_config?: matchN(1, [#quota_config, list.MaxItems(1) & [_, ...] & [...#quota_config]])

		// The id of the quota to which the quota preference is applied. A
		// quota id is unique in the service.
		// Example: 'CPUS-per-project-region'.
		quota_id?: string

		// Is the quota preference pending Google Cloud approval and
		// fulfillment.
		reconciling?: bool
		timeouts?:    #timeouts

		// The name of the service to which the quota preference is
		// applied.
		service?: string

		// Update time stamp.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// '2014-10-02T15:01:23Z' and '2014-10-02T15:01:23.045123456Z'.
		update_time?: string
	})

	#quota_config: close({
		// The annotations map for clients to store small amounts of
		// arbitrary data. Do not put PII or other sensitive information
		// here. See https://google.aip.dev/128#annotations.
		//
		// An object containing a list of "key: value" pairs. Example: '{
		// "name": "wrench", "mass": "1.3kg", "count": "3" }'.
		annotations?: [string]: string

		// Granted quota value.
		granted_value?: string

		// The preferred value. Must be greater than or equal to -1. If
		// set to -1, it means the value is "unlimited".
		preferred_value!: string

		// The origin of the quota preference request.
		request_origin?: string

		// Optional details about the state of this quota preference.
		state_detail?: string

		// The trace id that the Google Cloud uses to provision the
		// requested quota. This trace id may be used by the client to
		// contact Cloud support to track the state of a quota preference
		// request. The trace id is only produced for increase requests
		// and is unique for each request. The quota decrease requests do
		// not have a trace id.
		trace_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
