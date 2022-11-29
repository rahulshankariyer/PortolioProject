select * from ProjectPortfolio..NashvilleHousing;

select SaleDate,convert(date,SaleDate)
from ProjectPortfolio..NashvilleHousing;

update ProjectPortfolio..NashvilleHousing set SaleDate = convert(date,SaleDate);

select PropertyAddress from ProjectPortfolio..NashvilleHousing;

select * from ProjectPortfolio..NashvilleHousing order by ParcelID;

select a.ParcelID,a.PropertyAddress,b.ParcelID,b.PropertyAddress,isnull(a.PropertyAddress,b.PropertyAddress)
from ProjectPortfolio..NashvilleHousing a join 
ProjectPortfolio..NashvilleHousing b 
on a.ParcelID = b.ParcelID and a.[UniqueID ] <> b.[UniqueID ]
where a.PropertyAddress is null;

update a
set PropertyAddress = isnull(a.PropertyAddress,b.PropertyAddress)
from ProjectPortfolio..NashvilleHousing a join 
ProjectPortfolio..NashvilleHousing b 
on a.ParcelID = b.ParcelID and a.[UniqueID ] <> b.[UniqueID ]
where a.PropertyAddress is null;

select PropertyAddress from ProjectPortfolio..NashvilleHousing;

select 
substring(PropertyAddress,1,charindex(',',PropertyAddress)-1) as Address,
substring(PropertyAddress,charindex(',',PropertyAddress)+1,len(PropertyAddress)) as City
from ProjectPortfolio..NashvilleHousing;

alter table ProjectPortfolio..NashvilleHousing
add Address nvarchar(255);

update ProjectPortfolio..NashvilleHousing 
set Address = substring(PropertyAddress,1,charindex(',',PropertyAddress)-1);

alter table ProjectPortfolio..NashvilleHousing
add City nvarchar(255);

update ProjectPortfolio..NashvilleHousing 
set City = substring(PropertyAddress,charindex(',',PropertyAddress)+1,len(PropertyAddress));

select PropertySplitAddress,PropertySplitCity from ProjectPortfolio..NashvilleHousing;

select * from ProjectPortfolio..NashvilleHousing;

select OwnerAddress from ProjectPortfolio..NashvilleHousing;

select 
parsename(replace(OwnerAddress,',','.'),3),
parsename(replace(OwnerAddress,',','.'),2),
parsename(replace(OwnerAddress,',','.'),1)
from ProjectPortfolio..NashvilleHousing;

alter table ProjectPortfolio..NashvilleHousing
add OwnerSplitAddress nvarchar(255);

update ProjectPortfolio..NashvilleHousing 
set OwnerSplitAddress = parsename(replace(OwnerAddress,',','.'),3);

alter table ProjectPortfolio..NashvilleHousing
add OwnerSplitCity nvarchar(255);

update ProjectPortfolio..NashvilleHousing 
set OwnerSplitCity = parsename(replace(OwnerAddress,',','.'),2);

alter table ProjectPortfolio..NashvilleHousing
add OwnerSplitState nvarchar(255);

update ProjectPortfolio..NashvilleHousing 
set OwnerSplitState = parsename(replace(OwnerAddress,',','.'),1);

select OwnerSplitAddress,OwnerSplitCity,OwnerSplitState from ProjectPortfolio..NashvilleHousing;

select distinct(SoldAsVacant),count(SoldAsVacant)
from ProjectPortfolio..NashvilleHousing
group by SoldAsVacant
order by 2;

select SoldAsVacant,
case
when SoldAsVacant='Y' then 'Yes'
when SoldAsVacant='N' then 'No'
else SoldAsVacant
end
from ProjectPortfolio..NashvilleHousing;

update ProjectPortfolio..NashvilleHousing
set SoldAsVacant = 
case
when SoldAsVacant='Y' then 'Yes'
when SoldAsVacant='N' then 'No'
else SoldAsVacant
end;

with RowNumCTE as(
select *,row_number() over(
partition by
ParcelID,
PropertyAddress,
SalePrice,
SaleDate,
LegalReference
order by UniqueID
) row_num
from ProjectPortfolio..NashvilleHousing
)
select * from RowNumCTE
where row_num > 1
order by PropertyAddress;

with RowNumCTE as(
select *,row_number() over(
partition by
ParcelID,
PropertyAddress,
SalePrice,
SaleDate,
LegalReference
order by UniqueID
) row_num
from ProjectPortfolio..NashvilleHousing
)
delete from RowNumCTE
where row_num > 1;

select * from ProjectPortfolio..NashvilleHousing;

alter table ProjectPortfolio..NashvilleHousing
drop column PropertyAddress,OwnerAddress,TaxDistrict;

alter table ProjectPortfolio..NashvilleHousing
drop column SaleDate;