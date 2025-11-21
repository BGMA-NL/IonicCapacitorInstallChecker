export interface InstallCheckerPlugin {
  isInstalledFromStore(): Promise<{ status: boolean; }>;
}
