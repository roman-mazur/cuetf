package res

#google_compute_attached_disk: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_attached_disk")
	close({
		// Specifies a unique device name of your choice that is reflected
		// into the /dev/disk/by-id/google-* tree of a Linux operating
		// system running within the instance. This name can be used to
		// reference the device for mounting, resizing, and so on, from
		// within the instance. If not specified, the server chooses a
		// default device name to apply to this disk, in the form
		// persistent-disks-x, where x is a number assigned by Google
		// Compute Engine.
		device_name?: string

		// name or self_link of the disk that will be attached.
		disk!: string

		// name or self_link of the compute instance that the disk will be
		// attached to. If the self_link is provided then zone and
		// project are extracted from the self link. If only the name is
		// used then zone and project must be defined as properties on
		// the resource or provider.
		instance!: string
		id?:       string

		// The disk interface used for attaching this disk. One of SCSI or
		// NVME. (This field is only used for specific cases, please
		// don't specify this field without advice from Google.)
		interface?: string

		// The mode in which to attach this disk, either READ_WRITE or
		// READ_ONLY. If not specified, the default is to attach the disk
		// in READ_WRITE mode.
		mode?: string

		// The project that the referenced compute instance is a part of.
		// If instance is referenced by its self_link the project defined
		// in the link will take precedence.
		project?: string

		// The zone that the referenced compute instance is located
		// within. If instance is referenced by its self_link the zone
		// defined in the link will take precedence.
		zone?:     string
		timeouts?: #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
