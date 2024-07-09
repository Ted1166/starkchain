use starknet::ContractAddress;
use core::array::{Array, ArrayTrait};

#[derive(Copy, Drop, Serde, starknet::Store)]
struct Product {
    product_id: ContractAddress,
    owner: felt252,
    origin: felt252,
    current_location: felt252,
}

#[derive(Copy, Drop, Serde, starknet::Store)]
struct ProductLocationUpdate {
    product_id: ContractAddress,
    new_location: felt252,
}

#[derive(Copy, Drop, Serde, starknet::Store)]
struct Certification {
    product_id: ContractAddress,
    certifier: felt252,
    Certification_id: felt252,
}

#[derive(Copy, Drop, Serde, starknet::Store)]
struct Reward {
    consumer_id: ContractAddress,
    product_id: ContractAddress,
    points: u64,
}

#[derive(Copy, Drop, Serde, starknet::Store)]
struct ConsumerRewards {
    consumer_id: felt252,
    total_points: u64,
}

#[derive(Copy, Drop, Serde, starknet::Store)]
struct InvokeFunction {
    contract_address: felt252,
    entry_point_selector: felt252,
}