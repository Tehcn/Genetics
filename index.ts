import { Pos } from './pos';
import { DNA } from './dna';

import { Grass } from './organisms/grass';
import { Deer } from './organisms/deer';
import { Wolf } from './organisms/wolf';

import { printHeapSize, printUsedMemory } from './mem';
import { appendFileSync, writeFileSync, readFileSync, existsSync } from 'fs';

let loop: NodeJS.Timer;
let runs: number;

const Options = {
    LogInitialOrganisms: false,
}

function init() {
    if(!existsSync("data/runs.txt")) {
        writeFileSync("data/runs.txt", "0", { flag: "wx" });
        runs = 0;
    } else {
        runs = Number.parseInt(readFileSync("data/runs.txt").toString());
        writeFileSync("data/runs.txt", (runs + 1).toString());
    }

    writeFileSync(`data/data-${runs}.csv`, "year,grass,deer,wolf,grass_tall,grass_short,deer_light,deer_dark,wolf_normal,wolf_fast,total\n");

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
    Wolf.all = Wolf.all.filter(wolf => wolf.hp > 0);

    // the following should never happen (hopefully)
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
        if(grass.age > grass.deathAge) {
            grass.die();
        }
    });


    // deer update
    Deer.all.forEach(deer => {
        deer.age += 1;
        let reproduceChance = Math.random();
        if(Deer.all.length / 2 > Grass.all.length) deer.eatChance = 0.3;
        else deer.eatChance = 0.7
        if(Math.random() > deer.eatChance) deer.eat(Grass.all[Math.floor(Math.random() * Grass.all.length)]);
        if(reproduceChance < 0.4) {
            Deer.all.forEach(deer2 => {
                if(deer.pos == deer2.pos) {
                    let child = deer.reproduce(deer2);
                    if(child) Deer.all.push(child);
                }
            });
        }
        if(deer.age > 4) deer.die();
    });

    // wolf update
    Wolf.all.forEach(wolf => {
        wolf.age += 1;

        if(Wolf.all.length / 2 > Deer.all.length) wolf.eatChance = 0.3;
        else wolf.eatChance = 0.5;

        if(Math.random() < wolf.eatChance) wolf.eat(Deer.all[Math.floor(Math.random() * Deer.all.length)]);

        let reproduceChance = Math.random();
        if(reproduceChance < 0.3) {
            Wolf.all.forEach(wolf2 => {
                if(wolf.pos == wolf2.pos) {
                    let child = wolf.reproduce(wolf2);
                    if(child) Wolf.all.push(child);
                }
            });
        }
        if(wolf.age > 7) wolf.die();
    });

    // good for monitoring memory thing or whatever it's called
    printUsedMemory();

    // grass-tall
    let gT = Grass.all.filter((grass) => DNA.getPhenotype(grass.dna, Grass.traits[0]) == Grass.traits[0].phenotypes[0]).length;
    // grass-short
    let gS = Grass.all.length - gT;

    // deer-light
    let dL = Deer.all.filter((deer) => DNA.getPhenotype(deer.dna, Deer.traits[0]) == Deer.traits[0].phenotypes[0]).length;
    // deer-dark
    let dD = Deer.all.length - dL;

    //wolf-normal
    let wN = Wolf.all.filter((wolf) => DNA.getPhenotype(wolf.dna, Wolf.traits[0]) == Wolf.traits[0].phenotypes[0]).length;
    // wolf-fast
    let wF = Wolf.all.length - wN;

    // total population
    let total = Grass.all.length + Deer.all.length + Wolf.all.length;

    // longest template literal i've ever written
    console.log(`\x1b[33m${year},${Grass.all.length},${Deer.all.length},${Wolf.all.length},${gT},${gS},${dL},${dD},${wN},${wF},${total}\x1b[0m`);

    // saving data to csv file
    appendFileSync(`data/data-${runs}.csv`, `${year},${Grass.all.length},${Deer.all.length},${Wolf.all.length},${gT},${gS},${dL},${dD},${wN},${wF},${total}\n`);

    // increment year
    year++;

    // have to do this because i don't have enough RAM lmao
    if(year == 26) {
        clearInterval(loop);
    }


}

init();