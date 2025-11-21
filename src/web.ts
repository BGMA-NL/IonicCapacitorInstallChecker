import { WebPlugin } from '@capacitor/core';

import type { InstallCheckerPlugin } from './definitions';

export class InstallCheckerWeb extends WebPlugin implements InstallCheckerPlugin {
  async isInstalledFromStore(): Promise<{ status: boolean; }> {
    return Promise.resolve({ status: false });
  }
}
