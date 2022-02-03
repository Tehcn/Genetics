import { Pos } from './pos';
import { DNA } from './dna';

import { Grass } from './organisms/grass';
import { Deer } from './organisms/deer';
import { Wolf } from './organisms/wolf';

import { printHeapSize } from './mem';
import { appendFile, writeFileSync } from 'fs';

let loop: NodeJS.Timer;

const Options = {
    LogInitialOrganisms: false,
}

function init() {
    writeFileSync("data.csv", "year,grass,deer,wolf\n");

    printHeapSize();

    for(let i=0;i<64;i++) {
        Grass.all.push(new Grass(null));
    }

    for(let i=0;i<32;i++) {
        Deer.all.push(new Deer(null));
    }

    for(let i=0;i<4;i++) {
        Wolf.all.push(new Wolf(null));
    }

    if(Options.LogInitialOrganisms) {
        Grass.all.forEach(grass => {
            console.log(grass.dna.data);
            Grass.traits.forEach(trait => {
                console.log(DNA.getPhenotype(grass.dna, trait));
            });
            console.log('\n');
        });
    }


    loop = setInterval(update, 1);
}

let year = 0;

function update() {
    Grass.all = Grass.all.filter(grass => grass.hp > 0);
    Deer.all = Deer.all.filter(deer => deer.hp > 0);

    if(Grass.all.length == 0) {
        console.log('No grass left');
        clearInterval(loop);
        return;
    } else if(Deer.all.length == 0) {
        console.log('No deer left');
        clearInterval(loop);
        return;
    } else if(Wolf.all.length == 0) {
        console.log('No wolf left');
        clearInterval(loop);
        return;
    }

    // grass update
    Grass.all.forEach(grass => {
        grass.age += 1;
        let reproduceChance = Math.random();
        grass.photosynthesize();
        if(reproduceChance < 0.6) {
            let child = grass.reproduce();
            if(child) Grass.all.push(child);
        }
        if(grass.age > 8) {
            grass.die();
        }
    });


    // deer update
    Deer.all.forEach(deer => {
        deer.age += 1;
        let reproduceChance = Math.random();
        deer.eat(Grass.all[Math.floor(Math.random() * Grass.all.length)]);
        if(reproduceChance < 0.4) {
            Deer.all.forEach(deer2 => {
                if(deer.pos == deer2.pos) {
                    let child = deer.reproduce(deer2);
                    if(child) Deer.all.push(child);
                }
            });
        }
        if(deer.age > 4) {
            deer.die();
        }
    });

    // wolf update
    Wolf.all.forEach(wolf => {
        wolf.age += 1;
        if(Wolf.all.length / 2 > Deer.all.length) {
            wolf.eatChance = 0.3;
        }
        wolf.eat(Deer.all[Math.floor(Math.random() * Deer.all.length)]);
        let reproduceChance = Math.random();
        if(reproduceChance < 0.3) {
            Wolf.all.forEach(wolf2 => {
                if(wolf.pos == wolf2.pos) {
                    let child = wolf.reproduce(wolf2);
                    if(child) Wolf.all.push(child);
                }
            });
        }
        if(wolf.age > 7) {
            wolf.die();
        }
    });

    console.log(`${year},${Grass.all.length},${Deer.all.length},${Wolf.all.length}`);

    // saving data to csv file
    appendFile("data.csv", `${year},${Grass.all.length},${Deer.all.length},${Wolf.all.length}\n`, (err) => {
        if(err) throw err;
    });

    year++;

    // have to do this because i don't have enough RAM
    if(year == 31) {
        clearInterval(loop);
    }
}

init();
