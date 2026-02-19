package ci

// Generate a new tag and publish a new CUE module on a monthly basis running the monhtly-release command.
workflows: autorelease: {
	on: {
		// 1. Scheduled: Runs on the 20th day of every month
		schedule: [{cron: "0 10 20 * *"}]

		// 2. Manual: Enables the "Run workflow" button in the GitHub UI
		workflow_dispatch: {}
	}

	jobs: release: {
		permissions: {
			"id-token": "write"
			contents:   "write"
		}
		steps: [
			{
				name: "Checkout"
				uses: "actions/checkout@v4"
				with: "fetch-depth": 0
				with: token:         "${{ secrets.GENERATOR_TOKEN }}"
			},

			{name: "Set up Go", uses: "actions/setup-go@v4", with: "go-version": #versions.go},
			{name: "Set up CUE", run: "go install cuelang.org/go/cmd/cue"},

			{name: "Login to CUE Registry", uses: "cue-labs/registry-login-action@v1"},

			{
				name: "Execute"
				run:  """
					\(_scriptPrepareForGitPush)
					go run ./internal/cmd/monthly-release
					"""
			},
		]
	}
}
