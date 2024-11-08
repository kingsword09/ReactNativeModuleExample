import { NitroModules } from 'react-native-nitro-modules'
import type { Add } from './specs/Add.nitro'

export * from './specs/Add.nitro'

export const HybridNitroAdd =
  NitroModules.createHybridObject<Add>('NitroAdd')
