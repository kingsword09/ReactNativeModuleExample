import { NitroModules, type HybridObject } from 'react-native-nitro-modules'

interface NitroAddInterface
  extends HybridObject<{ ios: 'swift'; android: 'kotlin' }> {
  add(a: number, b: number): number
}

export const NitroAdd =
  NitroModules.createHybridObject<NitroAddInterface>('NitroAdd')
