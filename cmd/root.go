package cmd

import (
	"github.com/namzug16/apiline/config"
	"github.com/spf13/cobra"
)

var (
	rootCmd = &cobra.Command{
		Use:   "apiline",
		Short: "Build custom pipelines to test API endpoints",
	}
)

// Execute executes the root command.
func Execute() error {
	return rootCmd.Execute()
}

func init() {
	rootCmd.Version = config.Version
}
