import { getHeapStatistics } from 'v8';

function printHeapSize() {
    const maxHeapSz = getHeapStatistics().heap_size_limit;
    const maxHeapSz_GB = (maxHeapSz / 1024 ** 3).toFixed(1);
    
    console.log(`Allocated ${maxHeapSz_GB}GB of heap memory`);
}

function printUsedMemory() {
    console.log(`\n\x1b[32mCurrent Memory Use:\n\t${Math.round(process.memoryUsage().heapUsed / 1024 / 1024 / 1024 * 100) / 100}/${(getHeapStatistics().heap_size_limit / 1024 ** 3).toFixed(1)} GB\n\x1b[0m`);
}

export { printHeapSize, printUsedMemory };