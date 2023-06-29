/*
  Warnings:

  - You are about to drop the column `QuantityOfProducts` on the `Product` table. All the data in the column will be lost.
  - You are about to drop the column `QuantityOfSales` on the `Product` table. All the data in the column will be lost.
  - You are about to drop the column `buyeOldAndSexType` on the `Product` table. All the data in the column will be lost.
  - You are about to drop the column `productType` on the `Product` table. All the data in the column will be lost.
  - You are about to drop the `TagType` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `productBrend` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `productCategory` to the `Product` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "TagType" DROP CONSTRAINT "TagType_tagId_fkey";

-- AlterTable
ALTER TABLE "Product" DROP COLUMN "QuantityOfProducts",
DROP COLUMN "QuantityOfSales",
DROP COLUMN "buyeOldAndSexType",
DROP COLUMN "productType",
ADD COLUMN     "productBrend" TEXT NOT NULL,
ADD COLUMN     "productCategory" TEXT NOT NULL;

-- DropTable
DROP TABLE "TagType";

-- CreateTable
CREATE TABLE "OPtionType" (
    "optionId" TEXT NOT NULL,
    "optionName" TEXT NOT NULL,
    "optionContent" TEXT NOT NULL,
    "quantityOfProducts" INTEGER NOT NULL,
    "quantityOfSales" INTEGER NOT NULL,

    CONSTRAINT "OPtionType_pkey" PRIMARY KEY ("optionId")
);

-- CreateIndex
CREATE UNIQUE INDEX "OPtionType_optionId_key" ON "OPtionType"("optionId");

-- CreateIndex
CREATE UNIQUE INDEX "OPtionType_optionContent_key" ON "OPtionType"("optionContent");

-- AddForeignKey
ALTER TABLE "OPtionType" ADD CONSTRAINT "OPtionType_optionId_fkey" FOREIGN KEY ("optionId") REFERENCES "Product"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
