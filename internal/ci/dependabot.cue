package ci

(#dbot): updates: [
		{
			"package-ecosystem": "terraform"
			directories: ["*/internal"]
			schedule: interval: "weekly"
			"open-pull-requests-limit": 2
		}
	]

workflows: regenerate: {
	on: pull_request: {
		branches: ["main"]
		types: ["labeled"]
	}

	jobs: regenerate: {
		"if": "startsWith(github.event.event.label.name, 'provider:')"
		steps: [
			{
				name: "execute"
				run: """
					export label="${{ github.event.event.label.name }}"
					export provider=${label#"provider:"}
					echo "Regenerating for $provider"
					./update-provider.sh "$provider"
					"""
			}
		]
	}
}

workflows: (#dbot): {
	on: pull_request: branches: ["main"]

	jobs: (#dbot): {
		"if": "github.event.pull_request.user.login == '\(#dbot)[bot]'"
		steps: [
			{
				id: "metadata"
				name: "\(#dbot): \(id)"
				uses: "\(#dbot)/fetch-metadata@v2"
				with: "github-token": "${{ secrets.DEPENDABOT_GITUB }}"
			},
			{
				name: "label"
				run: """
					export dep_name="${{ steps.metadata.outputs.dependency-names }}"
					export label="provider:$(basename $dep_name)"
					echo "Setting label $label"
					gh pr edit "${{ github.event.pull_request.html_url }}" --add-label "$label"
					"""
			}
		]
	}
}
