<template>
  <MainLayout>
    <div id="CheckoutPage" class="mt-4 max-w-[1200px] mx-auto px-2"></div>
  </MainLayout>
</template>

<script setup>
import MainLayout from "~/layouts/MainLayout.vue";
import { useUserStore } from "~/stores/user";
const userStore = useUserStore();
const route = useRoute();

let stripe = null;
let elements = null;
let card = null;
let form = null;
let total = ref(0);
let clientSecret = null;
let currentAddress = ref(null);
let isProcessing = ref(false);

onMounted(() => {
  isProcessing.value = true;

  userStore.checkout.forEach((item) => {
    total.value += item.price;
  });
});

watch(() => {
  total.value,
    () => {
      if (total.value > 0) {
        stripeInit();
      }
    };
});

const stripeInit = async ()=>{
  
}

const products = [
  {
    id: 1,
    title: "Title 1",
    description: "This is a drcription ",
    url: "https://picsum.photos/id/7/800/800",
    price: 9999,
  },
  {
    id: 2,
    title: "Title 2",
    description: "This is a drcription ",
    url: "https://picsum.photos/id/71/800/800",
    price: 7767,
  },
];
</script>
