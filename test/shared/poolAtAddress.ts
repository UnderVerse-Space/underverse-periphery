import { abi as POOL_ABI } from '@underverse/core/artifacts/contracts/UnderVersePool.sol/UnderVersePool.json'
import { Contract, Wallet } from 'ethers'
import { IUnderVersePool } from '../../typechain'

export default function poolAtAddress(address: string, wallet: Wallet): IUnderVersePool {
  return new Contract(address, POOL_ABI, wallet) as IUnderVersePool
}
