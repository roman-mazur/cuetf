package ci

(#dbot): updates: [
		{
			"package-ecosystem": "terraform"
			directories: ["*/internal"]
			schedule: interval: "weekly"
			"open-pull-requests-limit": 2
		}
	]

workflows: (#dbot): {
	on: pull_request: branches: ["main"]

	jobs: (#dbot): {
		"runs-on": "ubuntu:latest"
		"if": "github.event.pull_request.user.login == '\(#dbot)[bot]'"
		steps: [
			{
				id: "metadata"
				name: "\(#dbot): \(id)"
				uses: "\(#dbot)/fetch-metadata@v2"
				with: "github-token": "${{ secrets.DEPENDABOT_GITUB }}"
			},
			{
				name: "regenerate"
				run: """
					export dep_name="${{ steps.metadata.outputs.dependency-names }}"
					echo "Regenerating for $dep_name"
					./update-provider.sh "$dep_name"
					"""
			}
		]
	}
}
