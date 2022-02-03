import { getHeapStatistics } from 'v8'

function printHeapSize() {
    const maxHeapSz = getHeapStatistics().heap_size_limit;
    const maxHeapSz_GB = (maxHeapSz / 1024 ** 3).toFixed(1);
    
    console.log(`Allocated ${maxHeapSz_GB}GB of heap memory`);
}

export { printHeapSize };