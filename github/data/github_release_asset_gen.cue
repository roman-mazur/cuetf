package data

#github_release_asset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_release_asset")
	close({
		// ID of the release asset to retrieve
		asset_id!: number

		// Browser URL from which the release asset can be downloaded
		browser_download_url?: string

		// MIME type of the asset
		content_type?: string

		// Date the asset was created
		created_at?: string

		// Whether to download the asset file content into the
		// `file_contents` attribute
		download_file_contents?: bool

		// The base64-encoded release asset file contents (requires
		// `download_file_contents` to be `true`)
		file_contents?: string

		// Label for the asset
		label?: string

		// File name of the asset
		name?: string

		// Node ID of the asset
		node_id?: string

		// Owner of the repository
		owner!: string
		id?:    string

		// Name of the repository to retrieve the release asset from
		repository!: string

		// Asset size in bytes
		size?: number

		// Date the asset was updated
		updated_at?: string

		// URL of the asset
		url?: string
	})
}
