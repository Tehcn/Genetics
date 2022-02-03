import { Trait } from './trait';
import { char } from './utils';

// alphabet without x and y
const genotypeChars = 'abcdefghijklmnopqrstuvwz'.split('');

type Genotype = char[][];

class DNA {
    public data: char[][];
    
    constructor(data: char[][]) {
        this.data = data;
    }

    public static mutate(halfGenotype: char) {
        // 0.01% chance of mutation
        if(Math.random() > 0.999) return halfGenotype.toUpperCase() == halfGenotype ? halfGenotype.toLowerCase() : halfGenotype.toUpperCase();
        else return halfGenotype;
    }

    public static generate(parents: Genotype[], traits: Trait[]): DNA {
        switch(parents.length) {
            case 0:
                let rgdnas: Genotype = []; // randomly generated dna sequence
                traits.forEach(trait => {
                    rgdnas.push([
                        DNA.mutate(Math.random() > 0.5 ? trait.id.toUpperCase() : trait.id.toLowerCase()),
                        DNA.mutate(Math.random() > 0.5 ? trait.id.toUpperCase() : trait.id.toLowerCase())
                    ]);
                });
                return new DNA(rgdnas);
            case 1:
                var spdnas: Genotype = []; // single parent dna sequence
                traits.forEach(trait => {
                    spdnas.push([
                        DNA.mutate(parents[0][traits.indexOf(trait)][0]),
                        DNA.mutate(parents[0][traits.indexOf(trait)][1])
                    ]);
                });
                return new DNA(spdnas);
            case 2:
                let mpdnas: Genotype = []; // multi parent dna sequence
                traits.forEach(trait => {
                    let parent1Genotype = parents[0][traits.indexOf(trait)];
                    let parent2Genotype = parents[1][traits.indexOf(trait)];

                    if(trait.name == "gender") {
                        mpdnas.push([
                            'x',
                            (parent1Genotype[1].toUpperCase() == 'x') ? 'x': 'y',
                        ]);
                    } else {
                        mpdnas.push([
                            (parent1Genotype[0].toUpperCase() == parent1Genotype[0] || parent2Genotype[0].toUpperCase() == parent2Genotype[0]) ? DNA.mutate(parent1Genotype[0]) : DNA.mutate(parent1Genotype[0].toLowerCase()),
                            (parent1Genotype[1].toUpperCase() == parent1Genotype[1] || parent2Genotype[1].toUpperCase() == parent2Genotype[1]) ? DNA.mutate(parent1Genotype[1]) : DNA.mutate(parent1Genotype[1].toLowerCase())
                        ]);
                    }

                });
                return new DNA(mpdnas);
            default:
                let drgdnas: Genotype = []; // default randomly generated dna sequence
                traits.forEach(trait => {
                    rgdnas.push([
                        DNA.mutate(Math.random() > 0.5 ? trait.id.toUpperCase() : trait.id.toLowerCase()),
                        DNA.mutate(Math.random() > 0.5 ? trait.id.toUpperCase() : trait.id.toLowerCase())
                    ]);
                });
                return new DNA(drgdnas);
        }
    }

    public static getPhenotype(dna: DNA, trait: Trait): string {
        return (trait.name == "gender" ? ((dna.data[1][0] == 'x' && dna.data[1][1] == 'x') ? 'female' : 'male') : (dna.data[0][0].toUpperCase() == dna.data[0][0] || dna.data[0][1].toUpperCase() == dna.data[0][1]) ? trait.phenotypes[0] : trait.phenotypes[1])
    }
}

export { DNA, Genotype };