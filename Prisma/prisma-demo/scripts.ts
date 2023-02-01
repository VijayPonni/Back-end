import { PrismaClient } from '@prisma/client'
const prisma = new PrismaClient();

async function main() {
await prisma.user.deleteMany()
}

main ()
.catch(
    e => {
        console.error(e.message);
    }
)
.finally(
    async () => {
        await prisma.$disconnect();
    }
)
function data(data: any, arg1: {}) {
    throw new Error('Function not implemented.');
}

