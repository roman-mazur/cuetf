package res

import "list"

#google_binary_authorization_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_binary_authorization_policy")
	close({
		// A descriptive comment.
		description?: string

		// Controls the evaluation of a Google-maintained global admission
		// policy
		// for common system-level images. Images not covered by the
		// global
		// policy will be subject to the project admission policy.
		// Possible values: ["ENABLE", "DISABLE"]
		global_policy_evaluation_mode?: string
		id?:                            string
		admission_whitelist_patterns?: matchN(1, [#admission_whitelist_patterns, [...#admission_whitelist_patterns]])
		project?: string
		cluster_admission_rules?: matchN(1, [#cluster_admission_rules, [...#cluster_admission_rules]])
		default_admission_rule!: matchN(1, [#default_admission_rule, list.MaxItems(1) & [_, ...] & [...#default_admission_rule]])
		timeouts?: #timeouts
	})

	#admission_whitelist_patterns: close({
		// An image name pattern to whitelist, in the form
		// 'registry/path/to/image'. This supports a trailing * as a
		// wildcard, but this is allowed only in text after the registry/
		// part.
		name_pattern!: string
	})

	#cluster_admission_rules: close({
		cluster!: string

		// The action when a pod creation is denied by the admission rule.
		// Possible values: ["ENFORCED_BLOCK_AND_AUDIT_LOG",
		// "DRYRUN_AUDIT_LOG_ONLY"]
		enforcement_mode!: string

		// How this admission rule will be evaluated. Possible values:
		// ["ALWAYS_ALLOW", "REQUIRE_ATTESTATION", "ALWAYS_DENY"]
		evaluation_mode!: string

		// The resource names of the attestors that must attest to a
		// container image. If the attestor is in a different project from
		// the
		// policy, it should be specified in the format
		// 'projects/*/attestors/*'.
		// Each attestor must exist before a policy can reference it. To
		// add an
		// attestor to a policy the principal issuing the policy change
		// request must be able to read the attestor resource.
		//
		// Note: this field must be non-empty when the evaluation_mode
		// field
		// specifies REQUIRE_ATTESTATION, otherwise it must be empty.
		require_attestations_by?: [...string]
	})

	#default_admission_rule: close({
		// The action when a pod creation is denied by the admission rule.
		// Possible values: ["ENFORCED_BLOCK_AND_AUDIT_LOG",
		// "DRYRUN_AUDIT_LOG_ONLY"]
		enforcement_mode!: string

		// How this admission rule will be evaluated. Possible values:
		// ["ALWAYS_ALLOW", "REQUIRE_ATTESTATION", "ALWAYS_DENY"]
		evaluation_mode!: string

		// The resource names of the attestors that must attest to a
		// container image. If the attestor is in a different project from
		// the
		// policy, it should be specified in the format
		// 'projects/*/attestors/*'.
		// Each attestor must exist before a policy can reference it. To
		// add an
		// attestor to a policy the principal issuing the policy change
		// request must be able to read the attestor resource.
		//
		// Note: this field must be non-empty when the evaluation_mode
		// field
		// specifies REQUIRE_ATTESTATION, otherwise it must be empty.
		require_attestations_by?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
