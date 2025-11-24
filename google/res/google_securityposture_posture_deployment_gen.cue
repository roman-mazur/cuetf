package res

#google_securityposture_posture_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_securityposture_posture_deployment")
	close({
		// Time the posture deployment was created in UTC.
		create_time?: string

		// Description of the posture deployment.
		description?: string

		// This is an output only optional field which will be filled in
		// case when
		// PostureDeployment state is UPDATE_FAILED or CREATE_FAILED or
		// DELETE_FAILED.
		// It denotes the desired posture to be deployed.
		desired_posture_id?: string

		// This is an output only optional field which will be filled in
		// case when
		// PostureDeployment state is UPDATE_FAILED or CREATE_FAILED or
		// DELETE_FAILED.
		// It denotes the desired posture revision_id to be deployed.
		desired_posture_revision_id?: string

		// For Resource freshness validation (https://google.aip.dev/154)
		etag?: string

		// This is a output only optional field which will be filled in
		// case where
		// PostureDeployment enters a failure state like UPDATE_FAILED or
		// CREATE_FAILED or DELETE_FAILED. It will have the failure
		// message for posture deployment's
		// CREATE/UPDATE/DELETE methods.
		failure_message?: string

		// The location of the resource, eg. global'.
		location!: string

		// Name of the posture deployment instance.
		name?: string
		id?:   string

		// The parent of the resource, an organization. Format should be
		// 'organizations/{organization_id}'.
		parent!: string

		// ID of the posture deployment.
		posture_deployment_id!: string
		timeouts?:              #timeouts

		// Relative name of the posture which needs to be deployed. It
		// should be in the format:
		// organizations/{organization_id}/locations/{location}/postures/{posture_id}
		posture_id!: string

		// Revision_id the posture which needs to be deployed.
		posture_revision_id!: string

		// If set, there are currently changes in flight to the posture
		// deployment.
		reconciling?: bool

		// State of the posture deployment. A posture deployment can be in
		// the following terminal states:
		// ACTIVE, CREATE_FAILED, UPDATE_FAILED, DELETE_FAILED.
		state?: string

		// The resource on which the posture should be deployed. This can
		// be in one of the following formats:
		// projects/{project_number},
		// folders/{folder_number},
		// organizations/{organization_id}
		target_resource!: string

		// Time the posture deployment was updated in UTC.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
