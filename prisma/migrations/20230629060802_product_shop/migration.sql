-- CreateTable
CREATE TABLE "Product" (
    "id" TEXT NOT NULL,
    "productType" TEXT NOT NULL,
    "buyeOldAndSexType" TEXT,

    CONSTRAINT "Product_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TagType" (
    "tagId" TEXT NOT NULL,
    "tagName" TEXT[],
    "tagContent" TEXT[],

    CONSTRAINT "TagType_pkey" PRIMARY KEY ("tagId")
);

-- CreateIndex
CREATE UNIQUE INDEX "Product_id_key" ON "Product"("id");

-- CreateIndex
CREATE UNIQUE INDEX "TagType_tagId_key" ON "TagType"("tagId");

-- AddForeignKey
ALTER TABLE "TagType" ADD CONSTRAINT "TagType_tagId_fkey" FOREIGN KEY ("tagId") REFERENCES "Product"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
