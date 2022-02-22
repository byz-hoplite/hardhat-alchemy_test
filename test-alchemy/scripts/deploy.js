async function main() {
    const test = await ethers.getContractFactory("test");

    const _test = await test.deploy("testing the test");
    console.log("test successfully deployed", _test.address);
}

main()
    .then(() => process.exit(0))
    .catch(error => {
        console.error(error);
        process.exit(1);
    });