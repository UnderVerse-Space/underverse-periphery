// SPDX-License-Identifier: GPL-2.0-or-later
import '@underverse/core/contracts/interfaces/IUnderVersePool.sol';

pragma solidity >=0.6.0;

import '../libraries/PoolTicksCounter.sol';

contract PoolTicksCounterTest {
    using PoolTicksCounter for IUnderVersePool;

    function countInitializedTicksCrossed(
        IUnderVersePool pool,
        int24 tickBefore,
        int24 tickAfter
    ) external view returns (uint32 initializedTicksCrossed) {
        return pool.countInitializedTicksCrossed(tickBefore, tickAfter);
    }
}
