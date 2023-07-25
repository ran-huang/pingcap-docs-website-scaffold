# PingCAP Docs Website Scaffold

This scaffold helps you to deploy a [PingCAP documentation website](https://docs.pingcap.com) easily.

To create a **production** build, you can run the `./build.sh` script.

To create a **development** build, you can run the `./build.sh` script with `dev` or `develop` argument.

## How to preview multiple PRs?

1. Create a new branch from the `mult-pr-preview` branch.

    Note: the new branch name cannot be `preview/**`, `preview-cloud/**`, or `preview-operator/**`.

2. Configure the following files:

    - `sync_mult_prs.sh`: Replace `{PR_NUMBER_x}` and `{release-x.y}` with the actual PR numbers and release version you want to preview.
    - `preview-mult-pr.yml`: Set the schedule for automatic PR preview.
    - `docs.json` (optional): Add a new entry for the release version you're previewing or update the existing configuration, such as the stable version.

3. Set the new branch as the default branch for the repository.

4. Manually trigger the `preview-mult-pr.yml` workflow to preview the PRs and validate the configuration.

After setup, the workflow will automatically run on the schedule defined in `preview-mult-pr.yml` to preview the PRs.
