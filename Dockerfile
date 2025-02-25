FROM rust:1.82 AS build

RUN cargo install rusty-rain

FROM debian:bookworm-slim

COPY --from=build /usr/local/cargo/bin/rusty-rain /bin/

ENTRYPOINT [ "/bin/rusty-rain" ]
