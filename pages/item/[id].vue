<template>
    <MainLayout>
        <div id="ItemPage" class="mt-4 max-w-[1200px] mx-auto px-2">
            <div class="md:flex gap-4 justify-between mx-auto w-full">
                <div class="md:w-[40%]">
                    <img v-if="currentImage" class="rounded-lg object-fit" :src="currentImage">
                    <div v-if="images[0] !== ''" class="flex items-center justify-center mt-2">
                        <div v-for="image in images" :key="image">
                            <img @mouseover="currentImage = image" @click="currentImage = image" width="70"
                                class="rounded-md object-fit border-[3px] cursor-pointer"
                                :class="currentImage === image ? 'border-[#FF5353]' : ''" :src="image">
                        </div>
                    </div>
                </div>
                <div class="md:w-[60%] bg-gray-100 p-3 rounded-lg">
                    <div v-if="true">
                        <p class="mb-2 font-semibold ">Titile</p>
                        <p class="font-light text-[12px] mb-2">Description Section</p>
                    </div>

                    <div class="flex items-center pt-1.5">
                        <span class="h-4 min-w-4 rounded-full p-0.5 bg-[#FFD000] mr-2">
                            <Icon name="material-symbols:star-rounded" class="-mt-[17px]" size="12" />
                        </span>
                        <p class="text-[#FF5353]">Extra 5% off</p>
                    </div>
                    <div class="flex items-center justify-start my-2">
                        <Icon name="ic:baseline-star" color="#FF5353" />
                        <Icon name="ic:baseline-star" color="#FF5353" />
                        <Icon name="ic:baseline-star" color="#FF5353" />
                        <Icon name="ic:baseline-star" color="#FF5353" />
                        <Icon name="ic:baseline-star" color="#FF5353" />
                        <span class="text-[13px] font-light ml-2">5 213 Review 1,000+ orders</span>
                    </div>

                    <div class="border-b" style="border-bottom:  1px solid orange"></div>

                    <div class=" flex  items-center justify-start gap-2 my-2">
                        <div class="text-xl font-bold ">${{ priceComputed }} </div>
                        <span class="bg-[#F5F5F5] border text-[#C08562] text-[9px] font-semibold px-1.5 rounded-sm ">70% off</span>
                    </div>
                    <p class="text-[#009A66] text-xs font-semibold pt-1">
                        Free 11-days delivery over €8.28
                    </p>

                </div>
            </div>
        </div>
    </MainLayout>
</template>

<script setup>
import MainLayout from '~/layouts/MainLayout.vue';
let currentImage = ref(null)

onMounted(() => {
    watchEffect(() => {
        currentImage.value = 'https://picsum.photos/id/77/800/800'
        images.value[0] = 'https://picsum.photos/id/77/800/800'
    })
})

const priceComputed = computed(() => {
    return '26.40'
})

const images = ref([
    '',
    'https://picsum.photos/id/212/800/800',
    'https://picsum.photos/id/233/800/800',
    'https://picsum.photos/id/165/800/800',
    'https://picsum.photos/id/99/800/800',
    'https://picsum.photos/id/144/800/800',

])

</script>