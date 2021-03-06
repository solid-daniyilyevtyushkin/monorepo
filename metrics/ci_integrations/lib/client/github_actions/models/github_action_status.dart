/// Represents a Github Actions status.
enum GithubActionStatus {
  /// Represents a status for a queued workflow run or a workflow run job.
  queued,

  /// Represents a status for a workflow run or a workflow run job that is
  /// in progress.
  inProgress,

  /// Represents a status for a completed workflow run or a workflow run job.
  completed,
}
