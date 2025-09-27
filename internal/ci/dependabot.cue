package ci

(#dbot): updates: [
	{
		"package-ecosystem": "terraform"
		directories: ["*/internal"]
		schedule: interval: "weekly"
		"open-pull-requests-limit": 2
	},
]

workflows: regenerate: {
	on: pull_request: {
		branches: ["main"]
		types: ["labeled"]
	}

	jobs: regenerate: {
		"if": "startsWith(github.event.label.name, 'provider:')"
		permissions: contents: "write"

		#useGit: true
		#script: """
			branch=${GITHUB_HEAD_REF:-${GITHUB_REF#refs/heads/}}
			git checkout "origin/$branch"

			export label="${{ github.event.label.name }}"
			export provider=${label#"provider:"}
			echo "Regenerating for $provider"
			./update-providers.sh "$provider"

			git add "$provider"
			git add "logs/$provider-log.txt"
			git commit -m "$provider: regenerate on dep update"
			git push origin HEAD:"$branch"
			"""
	}
}

workflows: (#dbot): {
	on: pull_request: branches: ["main"]

	jobs: (#dbot): {
		"if": "github.event.pull_request.user.login == '\(#dbot)[bot]'"
		steps: [
			{
				id:   "metadata"
				name: "\(#dbot): \(id)"
				uses: "\(#dbot)/fetch-metadata@v2"
				with: "github-token": "${{ secrets.GITHUB_TOKEN }}"
			},
			{
				name: "label"
				env: GH_TOKEN: "${{ secrets.DEPENDABOT_GITHUB }}"
				run: """
					export dep_name="${{ steps.metadata.outputs.dependency-names }}"
					export label="provider:$(basename $dep_name)"
					echo "Setting label $label"
					gh pr edit "${{ github.event.pull_request.html_url }}" --add-label "$label"
					"""
			},
		]
	}
}
