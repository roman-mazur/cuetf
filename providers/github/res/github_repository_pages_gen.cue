package res

import "list"

#github_repository_pages: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_repository_pages")
	close({
		source?: matchN(1, [#source, list.MaxItems(1) & [...#source]])

		// The API URL of the GitHub Pages resource.
		api_url?: string

		// The GitHub Pages site's build status e.g. 'building' or
		// 'built'.
		build_status?: string

		// The type of GitHub Pages site to build. Can be 'legacy' or
		// 'workflow'.
		build_type?: string

		// The custom domain for the repository.
		cname?: string

		// Whether the rendered GitHub Pages site has a custom 404 page.
		custom_404?: bool

		// The absolute URL (with scheme) to the rendered GitHub Pages
		// site.
		html_url?: string

		// Whether the rendered GitHub Pages site will only be served over
		// HTTPS. Requires 'cname' to be set.
		https_enforced?: bool
		id?:             string

		// Whether the GitHub Pages site is publicly visible. If set to
		// `true`, the site is accessible to anyone on the internet. If
		// set to `false`, the site will only be accessible to users who
		// have at least `read` access to the repository that published
		// the site.
		public?: bool

		// The repository name to configure GitHub Pages for.
		repository!: string

		// The ID of the repository to configure GitHub Pages for.
		repository_id?: number
	})

	#source: close({
		// The repository branch used to publish the site's source files.
		// (i.e. 'main' or 'gh-pages')
		branch!: string

		// The repository directory from which the site publishes
		// (Default: '/')
		path?: string
	})
}
