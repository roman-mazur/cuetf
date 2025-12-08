package res

import "list"

#google_apigee_security_monitoring_condition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_security_monitoring_condition")
	close({
		// Resource ID of the security monitoring condition.
		condition_id!: string

		// The timestamp at which this profile was created.
		create_time?: string

		// Name of the security monitoring condition resource,
		// in the format
		// 'organizations/{{org_name}}/securityMonitoringConditions/{{condition_id}}'.
		name?: string
		id?:   string

		// The Apigee Organization associated with the Apigee Security
		// Monitoring Condition,
		// in the format 'organizations/{{org_name}}'.
		org_id!: string

		// ID of security profile of the security monitoring condition.
		profile!: string

		// ID of security profile of the security monitoring condition.
		scope!: string

		// Total number of deployed resources within scope.
		total_deployed_resources?: number

		// Total number of monitored resources within this condition.
		total_monitored_resources?: number
		include_all_resources?: matchN(1, [#include_all_resources, list.MaxItems(1) & [...#include_all_resources]])
		timeouts?: #timeouts

		// The timestamp at which this profile was most recently updated.
		update_time?: string
	})

	#include_all_resources: close({})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
