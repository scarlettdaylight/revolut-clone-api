/*
  Warnings:

  - Added the required column `registeredAt` to the `Account` table without a default value. This is not possible if the table is not empty.
  - Added the required column `status` to the `Account` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `AccountType` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `Currency` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `TransactionType` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "AccountStatus" AS ENUM ('ACTIVE', 'SUSPENDED');

-- AlterTable
ALTER TABLE "Account" ADD COLUMN     "registeredAt" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "status" "AccountStatus" NOT NULL;

-- AlterTable
ALTER TABLE "AccountType" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "Currency" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "TransactionType" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "User" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP;
