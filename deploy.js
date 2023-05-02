const hre = require("hardhat");

async function main() {
  const Errors = await hre.ethers.getContractFactory("Errors");
  const errors = await Errors.deploy();

  await errors.deployed();

  const reply = await errors.testErrors(300, 10);
  const transcript = await reply.wait();

  console.log(transcript.events[0].args.message.toString());
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
