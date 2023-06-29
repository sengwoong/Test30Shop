/*
  Warnings:

  - The `tagContent` column on the `TagType` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - Added the required column `QuantityOfProducts` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `QuantityOfSales` to the `Product` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Product" ADD COLUMN     "QuantityOfProducts" INTEGER NOT NULL,
ADD COLUMN     "QuantityOfSales" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "TagType" DROP COLUMN "tagContent",
ADD COLUMN     "tagContent" TEXT[];
