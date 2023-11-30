// Program to calculate the room capacity based on the number of chairs and tables

program room_capacity_calculator.aleo {
    // Struct representing a room with chairs and tables
    struct Room {
        chairs: u32,
        tables: u32,
    }

    // Transition function to calculate the room capacity
    transition calculateRoomCapacity(room: Room) -> u32 {
        // Assume each chair occupies one person
        let totalCapacity: u32 = room.chairs;

        // Assume each table can accommodate four people
        let additionalCapacity: u32 = 4u32 * room.tables;

        // Calculate the total room capacity
        let roomCapacity: u32 = totalCapacity + additionalCapacity;

        // Return the room capacity value
        return roomCapacity;
    }
}
