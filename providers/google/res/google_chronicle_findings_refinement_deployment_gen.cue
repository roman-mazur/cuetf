package res

import "list"

google_chronicle_findings_refinement_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_chronicle_findings_refinement_deployment")
	close({
		detection_exclusion_application?: matchN(1, [#detection_exclusion_application, list.MaxItems(1) & [...#detection_exclusion_application]])
		timeouts?: #timeouts

		// The archive state of the findings refinement deployment.
		// Cannot be set to true unless enabled is set to false.
		// If currently set to true, enabled cannot be updated to true.
		archived?: bool

		// Whether the findings refinement is currently deployed continuously against
		// incoming findings.
		enabled?: bool

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		findings_refinement!: string
		id?:                  string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		instance!: string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		location!: string

		// The resource name of the findings refinement deployment.
		// Format:
		// projects/{project}/locations/{location}/instances/{instance}/findingsRefinements/{findings_refinement}/deployment
		name?: string

		// The timestamp when the findings refinement deployment was last updated.
		update_time?: string
		project?:     string
	})

	#detection_exclusion_application: close({
		// The CuratedRuleSets this detection exclusion applies to.
		// Format:
		// projects/{project}/locations/{location}/instances/{instance}/curatedRuleSetCategories/{category}/curatedRuleSets/{rule_set}
		curated_rule_sets?: [...string]

		// The CuratedRules this detection exclusion applies to.
		// Format:
		// projects/{project}/locations/{location}/instances/{instance}/curatedRules/{rule}
		curated_rules?: [...string]

		// The deleted CuratedRuleSets this detection exclusion applies to.
		// Indicates to the customer that the detection exclusion no longer applies
		// to the rule sets, so the detection exclusion should be updated.
		// Format:
		// projects/{project}/locations/{location}/instances/{instance}/curatedRuleSetCategories/{category}/curatedRuleSets/{rule_set}
		deleted_curated_rule_sets?: [...string]

		// The Rules this detection exclusion applies to.
		// Format:
		// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}
		rules?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
