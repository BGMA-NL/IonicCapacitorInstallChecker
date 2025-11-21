import { registerPlugin } from '@capacitor/core';

import type { InstallCheckerPlugin } from './definitions';

const InstallChecker = registerPlugin<InstallCheckerPlugin>('InstallChecker', {
  web: () => import('./web').then((m) => new m.InstallCheckerWeb()),
});

export * from './definitions';
export { InstallChecker };
