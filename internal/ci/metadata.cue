package ci

workflows: metadata: {
	on: schedule: [{cron: "0 6 * * FRI"}]

	jobs: aws: {
		env: {
			AWS_ACCESS_KEY_ID:     "${{ secrets.METADATA_AWS_ACCESS_KEY }}"
			AWS_SECRET_ACCESS_KEY: "${{ secrets.METADATA_AWS_ACCESS_SECRET }}"
		}
		#useGit: true
		#script: """
			\(_scriptPrepareForGitPush)

			cd aws && ./import.sh

			if [ $(git status --porcelain | wc -l) -gt 0 ]; then
					git add .
					git commit -m "aws: update metadata"
					git push origin HEAD:"$branch"
			fi
			"""
	}
}
