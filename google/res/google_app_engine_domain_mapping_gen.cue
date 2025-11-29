package res

import "list"

#google_app_engine_domain_mapping: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_app_engine_domain_mapping")
	close({
		// Relative name of the domain serving the application. Example:
		// example.com.
		domain_name!: string

		// Full path to the DomainMapping resource in the API. Example:
		// apps/myapp/domainMapping/example.com.
		name?: string
		id?:   string

		// Whether the domain creation should override any existing
		// mappings for this domain.
		// By default, overrides are rejected. Default value: "STRICT"
		// Possible values: ["STRICT", "OVERRIDE"]
		override_strategy?: string

		// The resource records required to configure this domain mapping.
		// These records must be added to the domain's DNS
		// configuration in order to serve the application via this domain
		// mapping.
		resource_records?: [...close({
			name?:   string
			rrdata?: string
			type?:   string
		})]
		project?: string
		ssl_settings?: matchN(1, [#ssl_settings, list.MaxItems(1) & [...#ssl_settings]])
		timeouts?: #timeouts
	})

	#ssl_settings: close({
		// ID of the AuthorizedCertificate resource configuring SSL for
		// the application. Clearing this field will
		// remove SSL support.
		// By default, a managed certificate is automatically created for
		// every domain mapping. To omit SSL support
		// or to configure SSL manually, specify
		// 'SslManagementType.MANUAL' on a 'CREATE' or 'UPDATE' request.
		// You must be
		// authorized to administer the 'AuthorizedCertificate' resource
		// to manually map it to a DomainMapping resource.
		// Example: 12345.
		certificate_id?: string

		// ID of the managed 'AuthorizedCertificate' resource currently
		// being provisioned, if applicable. Until the new
		// managed certificate has been successfully provisioned, the
		// previous SSL state will be preserved. Once the
		// provisioning process completes, the 'certificateId' field will
		// reflect the new managed certificate and this
		// field will be left empty. To remove SSL support while there is
		// still a pending managed certificate, clear the
		// 'certificateId' field with an update request.
		pending_managed_certificate_id?: string

		// SSL management type for this domain. If 'AUTOMATIC', a managed
		// certificate is automatically provisioned.
		// If 'MANUAL', 'certificateId' must be manually specified in
		// order to configure SSL for this domain. Possible values:
		// ["AUTOMATIC", "MANUAL"]
		ssl_management_type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
