/*
  Warnings:

  - You are about to drop the `OPtionType` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "OPtionType" DROP CONSTRAINT "OPtionType_optionId_fkey";

-- DropTable
DROP TABLE "OPtionType";

-- CreateTable
CREATE TABLE "OptionType" (
    "optionTypeid" SERIAL NOT NULL,
    "optionId" TEXT NOT NULL,
    "optionName" TEXT NOT NULL,
    "optionContent" TEXT NOT NULL,
    "quantityOfProducts" INTEGER NOT NULL,
    "quantityOfSales" INTEGER NOT NULL,

    CONSTRAINT "OptionType_pkey" PRIMARY KEY ("optionTypeid")
);

-- CreateIndex
CREATE UNIQUE INDEX "OptionType_optionContent_key" ON "OptionType"("optionContent");

-- AddForeignKey
ALTER TABLE "OptionType" ADD CONSTRAINT "OptionType_optionId_fkey" FOREIGN KEY ("optionId") REFERENCES "Product"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
